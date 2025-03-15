Require Import List ListDec.
Require Import Sets.Ensembles.

Module EnsembleFun.

Class EnsembleFun {A B} := {
    f: A -> B;
    U: A -> Prop;
    V: B -> Prop;
    ef_welldef: forall x, U x -> V (f x)
}.

Print EnsembleFun.

#[refine]
Instance asEF {A: Type} {B: Type} (f': A->B) : EnsembleFun :=
{
    f := f';
    U := Full_set A;
    V := Full_set B;
}.
Proof.
    intros.
    apply Full_intro.
Defined.

Print asEF.

Definition asEF' {A B} (f:A->B) :=
    Build_EnsembleFun A B f (Full_set A) (Full_set B)
    (fun (x : A) (_ : Full_set A x) => Full_intro B (f x)).

Print asEF'.

(* V (f x) follows from (U x) and ef_welldef *)
Definition applicableEF {A B} (F: @EnsembleFun A B) x: Prop := U x.

Definition appEF {A B} (F: @EnsembleFun A B) x : B :=
    f x.

#[refine]
Instance composeEF {A B C} (G: @EnsembleFun B C) (F: @EnsembleFun A B) (H: forall x,F.(V) x = G.(U) x) : @EnsembleFun A C:=
{
    f := (fun x => G.(f) (F.(f) x));
    U := F.(U);
    V := G.(V)
}.
Proof.
    intros.
    induction G as [g Ug Vg Hg].
    induction F as [f Uf Vf Hf].
    apply Hg.
    rewrite <- H.
    apply Hf.
    auto.
Defined.

Print composeEF.

(* 定義域に対する条件が必要 *)
Definition InjectiveEF {A B} (F: @EnsembleFun A B) :=
    forall x y, U x -> U y -> f x = f y -> x = y.

Definition SurjectiveEF {A B} (F: @EnsembleFun A B) :=
    forall y, exists x, U x /\ f x = y.
   
Definition BijectiveEF {A B} (F: @EnsembleFun A B) :=
    exists G: (@EnsembleFun B A),
        (forall x, F.(U) x = G.(V) x) /\
        (forall x, F.(V) x = G.(U) x) /\
        (forall x, F.(U) x -> appEF G (appEF F x) = x) /\
        (forall y, G.(U) y -> appEF F (appEF G y) = y).

Definition FullEF {A:Type} (U:A->Prop) (l:list A) := forall a:A, U a -> List.In a l.
Definition FiniteEF {A:Type} (U:A->Prop) := exists (l:list A), FullEF U l.

Definition ListingEF {A:Type} (U:A->Prop) (l:list A) := NoDup l /\ FullEF U l.
Definition FiniteEF' {A:Type} (U:A->Prop) := exists (l:list A), ListingEF U l.

(*
Lemma FiniteE_alt A (d:decidable_eq A) (U:A->Prop): FiniteE U <-> FiniteE' U.
*)

Lemma InjectiveEF_map_NoDup {A B} (F: @EnsembleFun A B) (l:list A) :
    InjectiveEF F -> NoDup l -> (forall e, List.In e l -> applicableEF F e) -> NoDup (map (appEF F) l).
Proof.
    intros. induction l; simpl; constructor.
    - rewrite in_map_iff.
      intros (y & E & Y).
      apply H in E.
      + subst.
        destruct (proj1 (NoDup_cons_iff _ _) H0).
        apply H2. auto.
      + apply H1.
        apply in_cons; auto.
      + apply H1. apply in_eq; auto.
    - apply IHl.
      + apply (proj1 (NoDup_cons_iff _ _ ) H0).
      + intros.
        apply H1.
        apply in_cons.
        auto.
Qed.

(*
Lemma Injective_list_carac A B (d:decidable_eq A)(f:A->B) :
    Injective f <-> (forall l, NoDup l -> NoDup (map f l)).
   
Lemma Injective_carac A B (l:list A) : Listing l ->
    forall (f:A->B), Injective f <-> NoDup (map f l).
*)

Lemma BijectiveEF_InjectiveEF: forall A B F, (@BijectiveEF A B F) -> InjectiveEF F.
Proof.
    unfold BijectiveEF, InjectiveEF, appEF.
    intros A B F [G (HU & HV & H1 & H2)] x y HUx HUy Happ.
    set (Hx := H1 x HUx).
    set (Hy := H1 y HUy).
    rewrite <- Hx, <- Hy, Happ. auto.
Qed.

End EnsembleFun.

Import EnsembleFun.
