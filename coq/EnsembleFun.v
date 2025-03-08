Require Import List ListDec.

Module EnsembleFun.

Record EnsembleFun {A B} := mkEnsembleFun {
    f: A -> B;
    U: A -> Prop;
    V: B -> Prop
}.

Arguments mkEnsembleFun {_ _ } _ _ _.

Check mkEnsembleFun.

Definition applicable {A B} (F: @EnsembleFun A B) x : Prop :=
    F.(U) x /\ F.(V) (F.(f) x).

Definition appF {A B} (F: @EnsembleFun A B) x : B :=
    F.(f) x.

Definition InjectiveE {A B} (F: @EnsembleFun A B) :=
    forall x y, applicable F x -> applicable F y -> appF F x = appF F y -> x = y.

Definition SurjectiveE {A B} (F: @EnsembleFun A B) :=
    forall y, exists x, applicable F x -> appF F x = y.
   
Definition BijectiveE {A B} (F: @EnsembleFun A B) :=
    exists G: (@EnsembleFun B A),
        (forall x, applicable F x -> applicable G (appF F x) /\ appF G (appF F x) = x) /\
        (forall y, applicable G y -> applicable F (appF G y) /\ appF F (appF G y) = y).

Definition FullE {A:Type} (U:A->Prop) (l:list A) := forall a:A, U a -> In a l.
Definition FiniteE {A:Type} (U:A->Prop) := exists (l:list A), FullE U l.

Definition ListingE {A:Type} (U:A->Prop) (l:list A) := NoDup l /\ FullE U l.
Definition FiniteE' {A:Type} (U:A->Prop) := exists (l:list A), ListingE U l.

(*
Lemma FiniteE_alt A (d:decidable_eq A) (U:A->Prop): FiniteE U <-> FiniteE' U.
*)

Lemma InjectiveE_map_NoDup {A B} (F: @EnsembleFun A B) (l:list A) :
    InjectiveE F -> NoDup l -> (forall e, In e l -> applicable F e) -> NoDup (map (appF F) l).
Proof.
    intros. induction l; simpl; constructor. rewrite in_map_iff.
    intros (y & E & Y). apply H in E. subst. destruct (proj1 (NoDup_cons_iff _ _) H0).
    apply H2. auto.
    apply H1. apply in_cons. auto.
    apply H1. apply in_eq.
    apply IHl. apply (proj1 (NoDup_cons_iff _ _ ) H0). intros. apply H1.
    apply in_cons. auto.
Qed.

(*
Lemma Injective_list_carac A B (d:decidable_eq A)(f:A->B) :
    Injective f <-> (forall l, NoDup l -> NoDup (map f l)).
   
Lemma Injective_carac A B (l:list A) : Listing l ->
    forall (f:A->B), Injective f <-> NoDup (map f l).
*)

Lemma BijectiveE_InjectiveE: forall A B F, (@BijectiveE A B F) -> InjectiveE F.
Proof.
    unfold BijectiveE, InjectiveE.
    intros A B F [G [H1 H2]] x y Hx Hy Happ.
    destruct (H1 x Hx) as [Hx1 Hx2].
    destruct (H1 y Hy) as [Hy1 Hy2].
    rewrite <- Hx2, <- Hy2, Happ. auto.
Qed.

End EnsembleFun.
