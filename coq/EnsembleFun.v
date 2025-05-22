From Stdlib Require Import List ListDec.
From Stdlib Require Import Sets.Ensembles.
From Stdlib Require Import Sets.Image.

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
    forall y, V y -> exists x, U x /\ f x = y.
   
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

Inductive ImEF {X Y} D (F: @EnsembleFun X Y) : Ensemble Y :=
    ImEF_intro: forall x, In _ D x -> In _ F.(U) x -> forall y, y = f x -> In _  (ImEF D F) y.

Lemma ImEF_def:
    forall {X Y} D (F: @EnsembleFun X Y) x, In _ D x -> In _ F.(U) x -> In _ (ImEF D F) (f x).
Proof.
    unfold In. intros. apply ImEF_intro with x; auto.
Qed.

Lemma ImEF_add:
    forall {X Y} D (F: @EnsembleFun X Y) x,
    In _ F.(U) x -> Same_set _ (ImEF (Add _ D x) F) (Add _ (ImEF D F) (f x)).
Proof.
    intros X Y D F x HUx. split; unfold Included, In; intros y H.
    - induction H as [x' HAdd HIn y Heq].
      induction HAdd as [x' H|x' H].
      + apply Add_intro1. apply ImEF_intro with x'; auto. 
      + induction H. rewrite Heq. apply Add_intro2.
    - induction H as [y HIn|y HIn].
      + induction HIn as [x' HInD HInU y Heq].
        rewrite Heq. apply ImEF_def; auto.
        apply Add_intro1; auto.
      + induction HIn. apply ImEF_def; auto.
        apply Add_intro2.
Qed.

Lemma Same_set_sym:
    forall U X Y, Same_set U X Y -> Same_set U Y X.
Proof.
    unfold Same_set. intros U X Y [HL HR]. split; auto.
Qed.

Lemma Finite_Same_set_Finite:
    forall U X Y, Finite U X -> Same_set U X Y -> Finite U Y.
Proof.
    intros U X Y HFin HSame.
    destruct HSame as [HL HR].
    apply Finite_sets_facts.Finite_downward_closed with X; auto.
Qed.
Print Assumptions Finite_Same_set_Finite.
Print Assumptions Finite_downward_closed.
(* classic, Extensionality_Ensembles *)

Lemma ImEF_Empty:
    forall {X Y} (F: @EnsembleFun X Y),
    Same_set _ (ImEF (Empty_set X) F) (Empty_set Y).
Proof.
    intros. split; unfold Included, In; intros y H.
    - induction H as [x [] HIn2 y Heq].
    - induction H.
Qed.

Lemma Included_Union: forall U X Y Z,
    Included U (Union _ X Y) Z -> Included _ X Z /\ Included _ Y Z.
Proof.
    unfold Included, In. intros U X Y Z HIn.
    split; intros x H; apply HIn; [apply Union_introl|apply Union_intror]; auto.
Qed.

Lemma Finite_ImEF:
    forall {X Y} D F, Finite _ D -> Included _ D F.(U) -> Finite _ (@ImEF X Y D F).
Proof.
    intros X Y D F HF HI. induction HF as [|X' HX' IHFinite x Hx].
    - apply Finite_Same_set_Finite with (Empty_set Y).
      + apply Empty_is_finite.
      + apply Same_set_sym, ImEF_Empty.
    - apply Finite_Same_set_Finite with (Add _ (ImEF X' F) (f x)).
      + apply Add_preserves_Finite.
        apply IHFinite.
        pose proof (Included_Union _ _ _ _ HI) as [HIL HIR]. auto.
      + apply Same_set_sym, ImEF_add.
        pose proof (Included_Union _ _ _ _ HI) as [HIL HIR]; auto with sets.
Qed.
Print Assumptions Finite_ImEF.
(* classic, Extensionality_Ensembles *)

Lemma ImEF_inv:
    forall {X Y} D F y,
    In _ (@ImEF X Y D F) y -> exists x, In _ D x /\ In _ F.(U) x /\ f x = y.
Proof.
    intros X Y D F y HIm. induction HIm as [x HD HU y Heq].
    exists x. split; auto.
Qed.

(* not_injective_elim *)

Lemma cardinal_ImEF_intro:
    forall {X Y} D F n, cardinal X D n -> Included X D F.(U) -> exists p, cardinal Y (@ImEF X Y D F) p.
Proof.
    intros.
    apply finite_cardinal.
    apply Finite_ImEF; auto.
    apply cardinal_finite with n; auto.
Qed.
Print Assumptions cardinal_ImEF_intro.
(* classic, Extensionality_Ensembles *)

Lemma In_ImEF_elim:
    forall {X Y} D F,
    (@InjectiveEF X Y) F -> forall x, In _ F.(U) x -> In _ (ImEF D F) (f x) -> In _ D x.
Proof.
    intros X Y D F HInj x HU HIm.
    apply ImEF_inv in HIm as [x' (HIn1 & HIn2 & Heq)].
    unfold InjectiveEF in HInj.
    pose proof (HInj _ _ HIn2 HU Heq) as Heq'.
    rewrite <- Heq'; auto.
Qed.

From GROUP Require Export Cardinal.

Lemma InjectiveEF_preserves_cardinal':
    forall {X Y} D F n,
    (@InjectiveEF X Y F) -> cardinal _ D n -> Included _ D U ->
    forall n', cardinal _ (ImEF D F) n' -> n' = n.
Proof.
    intros X Y D F n HInj HcarD HIn.
    induction HcarD; intros n' HIm.
    - assert (HEmpty: cardinal Y (Empty_set Y) n'). {
        apply Same_set_Finite_same_cardinal with (ImEF (Empty_set X) F); auto.
        - apply ImEF_Empty.
        - apply Finite_ImEF; auto with sets.   
      }
      pose proof (card_empty Y) as HEmpty0.
      apply cardinal_unicity with Y (Empty_set Y); auto.
    - assert (HS: Same_set _ (ImEF (Add _ A x) F) (Add _ (ImEF A F) (f x))). {
        apply ImEF_add, HIn, Add_intro2.
      }
      assert (Hcar: cardinal _ (Add Y (ImEF A F) (f x)) n'). {
        apply Same_set_Finite_same_cardinal with (ImEF (Add X A x) F); auto.
        apply Finite_ImEF; auto.
        apply Add_preserves_Finite, cardinal_finite with n; auto.
      }
      destruct n'.
      + apply cardinalO_empty in Hcar.
        assert (Hfx: Add Y (ImEF A F) (f x) (f x)) by apply Add_intro2.
        rewrite Hcar in Hfx.
        contradiction Hfx.
      + f_equal.
        assert (HInAU: Included X A U). {
            unfold Included, In. intros. apply HIn. apply Add_intro1; auto.
        }
        apply IHHcarD; auto.
        destruct (cardinal_ImEF_intro _ _ _ HcarD HInAU) as [n'' Hcarn''].
        assert (HnIn: ~ In _ (ImEF A F) (f x)). {
            unfold not; intros HInEFfx.
            apply In_ImEF_elim in HInEFfx; auto with sets.
        }
        assert (HcarAddn'': cardinal Y (Add _ (ImEF A F) (f x)) (S n'')). {
            apply card_add; auto.
        }
        pose proof (cardinal_unicity _ _ _ Hcar _ HcarAddn'') as HeqS.
        inversion HeqS as [Heq].
        subst; auto.
Qed.

Print Assumptions InjectiveEF_preserves_cardinal'.
(*
Axioms:
classic : forall P : Prop, P \/ ~ P
Extensionality_Ensembles : forall (U : Type) (A B : Ensemble U), Same_set U A B -> A = B
*)
Print Assumptions Same_set_Finite_same_cardinal.
(* classic, Extensionality_Ensembles *)

Lemma InjectiveEF_preserves_cardinal:
    forall {X Y} D F n,
    (@InjectiveEF X Y F) -> cardinal _ D n -> Included _ D U ->
    cardinal _ (ImEF D F) n.
Proof.
    intros.
    destruct (cardinal_ImEF_intro _ _ _ H0 H1) as [n' Hcar].
    pose proof (InjectiveEF_preserves_cardinal' _ _ _ H H0 H1 n' Hcar) as Heq.
    now rewrite <- Heq.
Qed.
Print Assumptions InjectiveEF_preserves_cardinal.
(*
Axioms:
classic : forall P : Prop, P \/ ~ P
Extensionality_Ensembles : forall (U : Type) (A B : Ensemble U), Same_set U A B -> A = B
*)

Lemma cardinal_decreases_EF:
    forall {X Y} D F n,
    cardinal X D n -> Included X D F.(U) -> forall n', cardinal Y (ImEF D F) n' -> n' <= n.
Proof.
    intros X Y D F n HcarD HIn n' HcarIm.
    generalize dependent n'. induction HcarD; intros.
    - pose proof (ImEF_Empty F).
      pose proof (card_empty Y).
      apply Same_set_sym in H.
      pose proof (Same_set_same_cardinal _ _ _ _ H H0).
      pose proof (cardinal_unicity _ _ _ H1 _ HcarIm).
      rewrite <- H2; auto.
    - destruct n'.
      apply Nat.lt_le_incl, Nat.lt_0_succ.
      assert (HInx: In X U x) by apply HIn, Add_intro2.
      pose proof (ImEF_add A _ _ HInx).
      pose proof (Same_set_same_cardinal _ _ _ _ H0 HcarIm).
      assert (HInA: Included X A U) by auto with sets.

      destruct (cardinal_ImEF_intro _ _ _ HcarD HInA) as [n'' Hcarn''].
      pose proof (IHHcarD HInA _ Hcarn'').
      pose proof (card_Add_gen _ _ _ _ _ Hcarn'' H1).
      apply le_n_S in H2.
      apply Nat.le_trans with (S n''); auto.
Qed.
Print Assumptions cardinal_decreases_EF.
Print Assumptions card_Add_gen.
(* classic, Extensionality_Ensembles *)
Print Assumptions cardinal_unicity.
(* Extensionality_Ensembles *)

From Stdlib Require Import Sets.Constructive_sets.

(* Powerset_Classical_facts.add_soustr_1
   In U X x -> Included U (Add U (Subtract U X x) x) X
   depends on no axioms *)
(* however, Powerset_Classical_facts.add_soustr_2
   In U X x -> Included U X (Add U (Subtract U X x) x)
   depends on Classical_Prop.classic (forall P: Prop, P \/ ~ P) *)
(* We need decidable_eq *)
Lemma decidable_eq_Add_Subtract_Same_set:
    forall U X x, decidable_eq U -> In U X x -> Same_set U (Add U (Subtract U X x) x) X.
Proof.
    intros U X x Hdec HIn. split; unfold Included, In; intros y HIn2.
    - unfold Add, Subtract, Setminus in *.
      destruct Hdec with x y as [Heq|Hneq].
      + rewrite <- Heq. apply HIn.
      + destruct HIn2 as [y [HInLL HInLR]|y HInR]; auto with sets.
        inversion HInR. contradiction Hneq.
    - destruct Hdec with x y.
      + rewrite H. unfold Add. apply Union_intror. auto with sets.
      + unfold Add, Subtract. apply Union_introl, Setminus_intro; auto with sets.
Qed.
Print Assumptions decidable_eq_Add_Subtract_Same_set.
(**)

Lemma BijectiveEF_ImEF:
    forall {X Y} F, (@BijectiveEF X Y F) -> Same_set _ (ImEF U F) V.
Proof.
    intros X Y F HBi. split; unfold Included, In; intros y H.
    - induction H as [x _ HU y Heq].
      rewrite Heq.
      apply ef_welldef; auto.
    - induction HBi as [G (HUV & HVU & HGF & HFG)].
      rewrite HVU in H.
      pose proof (HFG _ H) as Heq.
      rewrite <- Heq. unfold appEF.
      apply ImEF_intro with (f y); auto;
      unfold In; rewrite HUV; apply ef_welldef; auto.
Qed.

(* same_cardinal を維持したInductiveな定義を置くと証明楽かも？ *)
Lemma decidable_eq_BijectiveEF_same_cardinal_UV:
    forall A B F n, decidable_eq B -> (@BijectiveEF A B F) -> cardinal _ F.(U) n -> cardinal _ F.(V) n.
Proof.
    intros A B F n Hdeq HB HCU.
    pose proof (BijectiveEF_ImEF _ HB) as HIm.
    pose proof (BijectiveEF_InjectiveEF _ _ _ HB) as HFInj.
    unfold BijectiveEF in HB.
    destruct HB as [G (HUV & HVU & HFG & HGF)].
    assert (HBiG: BijectiveEF G). {
        unfold BijectiveEF. exists F. repeat split; auto.
    }
    pose proof (BijectiveEF_InjectiveEF _ _ _ HBiG) as Hinj.
    remember (F.(U)) as FU.
    generalize dependent G.
    induction HCU as [|U' n HCU IHHCU x HU'nx]; intros G HUV HVU HFG HGF HBi HInj.
    - assert (HS: Same_set _ (Empty_set B) F.(V)). {
        split.
        apply Included_Empty.
        unfold Included, In. intros y HV.
        rewrite (HVU y) in HV.
        pose proof (G.(ef_welldef) y HV) as HVfy.
        rewrite <- HUV in HVfy.
        contradiction HVfy.
      }
      apply Same_set_Finite_same_cardinal with (Empty_set B); auto with sets.
    - remember (Subtract _ F.(V) (appEF F x)) as V'.
      remember (Add _ V' (appEF F x)) as Vas.
      apply Same_set_Finite_same_cardinal with Vas.
      + rewrite HeqVas, HeqV'. apply decidable_eq_Add_Subtract_Same_set; auto.
        apply ef_welldef.
        rewrite <- HeqFU.
        apply Add_intro2.
      + apply Finite_Same_set_Finite with V.
        * apply Finite_Same_set_Finite with (ImEF (Add A U' x) F); auto.
          rewrite HeqFU.
          apply Finite_ImEF; auto with sets.
          rewrite <- HeqFU.
          apply Add_preserves_Finite.
          apply cardinal_finite with n; auto.
        * rewrite HeqVas, HeqV'.
          apply Same_set_sym, decidable_eq_Add_Subtract_Same_set; auto.
          assert (HImIn: (ImEF (Add A U' x) F) (f x)). {
            apply ImEF_def.
            apply Add_intro2.
            rewrite <- HeqFU.
            apply Add_intro2.
          }
          unfold appEF, In.
          destruct HIm as [HInL HInR].
          apply HInL, HImIn.
      + rewrite HeqVas.
        apply card_add.
        * assert (HIm': Same_set B (ImEF U' F) V'). {
            split; unfold Included, In; intros y H.
            - apply ImEF_inv in H as [x' (HU'x' & HUx' & Heqfx'y)].
              rewrite HeqV'. unfold Subtract, Setminus.
              split.
              + rewrite <- Heqfx'y.
                apply ef_welldef; auto.
              + unfold not. intros H. induction H.
                assert (Heqx: f (f x) = x). {
                    apply HFG.
                    apply Add_intro2.
                }
                assert (Heqx': f (f x') = x'). {
                    apply HFG.
                    rewrite HeqFU; auto.
                }
                apply (f_equal f) in Heqfx'y.
                unfold appEF in Heqfx'y.
                rewrite Heqx, Heqx' in Heqfx'y.
                rewrite <- Heqfx'y in HU'nx.
                contradiction.
            - rewrite HeqV' in H.
              unfold Subtract, Setminus in H.
              destruct H as [HVy Hnfx].
              assert (Hneq: f x <> y). {
                unfold not. intros. apply Hnfx.
                rewrite <- H. unfold appEF. apply In_singleton.
              }
              destruct HIm as [HInL HInR].
              unfold Included in HInR. apply HInR in HVy.
              induction HVy as [x' HAdd HU y Heq].
              rewrite Heq.
              apply ImEF_intro with x'; auto.
              induction HAdd as [x'|x' HSg]; auto.
              induction HSg.
              apply eq_sym in Heq.
              contradiction. 
          }
          assert (HInU': Included _ U' U). {
            unfold Included, In. intros. rewrite <- HeqFU.
            apply Add_intro1; auto.
          }
          destruct (cardinal_ImEF_intro _ _ _ HCU HInU') as [n'' Hn''].
          pose proof (InjectiveEF_preserves_cardinal' _ _ _ HFInj HCU HInU' _ Hn'') as Heq.
          rewrite <- Heq.
          apply Same_set_Finite_same_cardinal with (ImEF U' F); auto.
          apply cardinal_finite with n''; auto.
        * rewrite HeqV'.
          unfold not,Subtract, In, Setminus; intros [_ HCon].
          pose proof (In_singleton B (appEF F x)) as HCon'.
          contradiction.
Qed.
Print Assumptions decidable_eq_BijectiveEF_same_cardinal_UV.
(* classic, Extensionality_Ensembles *)

Lemma SurjectiveEF_Same_set_ImEF_V:
  forall A B F, (@SurjectiveEF A B F) -> Same_set _ (ImEF U F) V.
Proof.
  unfold SurjectiveEF, Same_set, Included, In; intros; split; intros.
  - induction H0. rewrite H2. apply ef_welldef; auto.
  - destruct (H _ H0) as [x' [Hx' Heq]].
    rewrite <- Heq.
    apply ImEF_def; auto.
Qed.
