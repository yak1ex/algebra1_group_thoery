Require Export Coq.Sets.Ensembles.
Require Export Coq.Sets.Finite_sets.
Require Import Coq.Sets.Image.
Require Import Coq.Logic.FinFun.

Lemma Same_set_same_cardinal_eq:
    forall U S1 S2 n1 n2,
    Same_set U S1 S2 -> cardinal U S1 n1 -> cardinal U S2 n2 -> n1 = n2.
Proof.
    intros U S1 S2 n1 n2 H HC1 HC2.
    destruct H as [HL HR].
    set (Hle1 := incl_card_le _ _ _ _ _ HC1 HC2 HL).
    set (Hle2 := incl_card_le _ _ _ _ _ HC2 HC1 HR).
    now apply Nat.le_antisymm.
Qed.
Print Assumptions Same_set_same_cardinal_eq.
Print Assumptions incl_card_le.
(* classic, Extensionality_Ensembles *)

Lemma Same_set_Finite_same_cardinal:
    forall U S1 S2 n,
    Same_set U S1 S2 -> Finite_sets.Finite U S1 -> cardinal U S1 n -> cardinal U S2 n.
Proof.
    intros.
    set (Hs := H).
    destruct H as [HL HR].
    pose proof (Finite_downward_closed _ _ H0 _ HR) as Hfin.
    destruct (finite_cardinal _ _ Hfin) as [m Hm].
    pose proof (Same_set_same_cardinal_eq _ _ _ _ _ Hs H1 Hm) as Heq.
    now subst.
Qed.
Print Assumptions Same_set_Finite_same_cardinal.
(* classic, Extensionality_Ensembles *)

Lemma Same_set_same_cardinal:
    forall U S1 S2 n,
    Same_set U S1 S2 -> cardinal U S1 n -> cardinal U S2 n.
Proof.
    intros.
    pose proof (cardinal_finite _ _ _ H0).
    apply Same_set_Finite_same_cardinal with S1; auto.
Qed.

Lemma Included_same_cardinal_Same_set:
    forall U S1 S2 n,
    Included U S1 S2 -> cardinal U S1 n -> cardinal U S2 n -> Same_set U S1 S2.
Proof.
    intros U S1 S2 n Hin HC1 HC2.
    destruct n.
    - apply cardinalO_empty in HC1.
      apply cardinalO_empty in HC2.
      now subst.
    - set (HI1 := cardinal_elim _ _ _ HC1).
      set (HI2 := cardinal_elim _ _ _ HC2).
      simpl in *.
      induction HI1 as [x1 HI1].
      induction HI2 as [x2 HI2].
      apply Included_Strict_Included in Hin as [HL|HR].
      + set (Hlt := incl_st_card_lt _ _ _ HC1 _ _ HC2 HL).
        now apply Arith_base.gt_irrefl_stt in Hlt.
      + now subst.
Qed.
Print Assumptions Included_same_cardinal_Same_set.
(* classic, Extensionality_Ensembles *)

Lemma Disjoint_Add:
    forall U S1 S2 x,
    Disjoint U S1 (Add U S2 x) -> Disjoint U S1 S2 /\ Disjoint U S1 (Singleton U x).
Proof.
    intros. split. induction H.
    - apply Disjoint_intro. unfold not in *. intros y Hin. apply H with y.
      destruct Hin as [y H1].
      apply Intersection_intro; auto with sets.
    - apply Disjoint_intro. destruct H. unfold not in *. intros y Hin.
      destruct Hin as [y Hin1 Hin2].
      apply H with y.
      apply Intersection_intro; auto.
      inversion Hin2. auto with sets.
Qed.

Lemma Disjoint_Singleton:
    forall U S x, Disjoint U S (Singleton U x) -> ~ In U S x.
Proof.
    unfold not. intros. induction H.
    apply (H x).
    apply Intersection_intro; auto with sets.
Qed.

Lemma cardinal_Disjoint_Union:
    forall U S1 S2 n1 n2,
    cardinal U S1 n1 ->
    cardinal U S2 n2 ->
    Disjoint U S1 S2 ->
    cardinal U (Union U S1 S2) (n1 + n2).
Proof.
    intros.
    induction H0; intros.
    - rewrite Empty_set_zero_right, Nat.add_0_r; auto.
    - rewrite <- Union_add.
      destruct (Disjoint_Add _ _ _ _ H1) as [HL HR].
      rewrite Nat.add_succ_r.
      apply card_add.
      + apply IHcardinal; auto.
      + unfold not; intros.
        destruct H3 as [x H3L|x H3R]; auto.
        apply (Disjoint_Singleton _ _ _ HR); auto.
Qed.
Print Assumptions cardinal_Disjoint_Union.
Print Assumptions Empty_set_zero_right.
(* Extensionality_Ensembles *)

Fixpoint LtNat (n: nat): Ensemble nat :=
match n with
| O => Empty_set nat
| S n => Add nat (LtNat n) n
end.

Lemma Same_set_lt_nat_LtNat:
    forall n, Same_set nat (fun m => m < n) (LtNat n).
Proof.
    intros. split; unfold Included, In; intros.
    - generalize dependent x. induction n; intros.
      + inversion H.
      + simpl.
        rewrite Nat.lt_succ_r,Nat.lt_eq_cases in H.
        destruct H as [HL|HR].
        * apply Add_intro1, IHn; auto.
        * subst.
          apply Add_intro2.
    - induction n; simpl in *.
      + inversion H.
      + destruct H as [x HL|x HR].
        * apply Nat.lt_lt_succ_r, IHn, HL.
        * induction HR. auto.
Qed.

Lemma LtNat_lt:
    forall n m, (LtNat n) m -> m < n.
Proof.
    intros.
    pose proof (Same_set_lt_nat_LtNat n) as Hs.
    destruct Hs as [HsL HsR].
    unfold Included in *.
    apply HsR, H.
Qed.


Lemma LtNat_finite:
    forall n, Finite_sets.Finite nat (LtNat n).
Proof.
    intros. induction n; simpl.
    - apply Empty_is_finite.
    - apply Add_preserves_Finite; auto.
Qed.
Print Assumptions LtNat_finite.
(* classic, Extensionality_Ensembles *)

Lemma lt_nat_finite:
    forall n, Finite_sets.Finite nat (fun m => m < n).
Proof.
    intros.
    pose proof (Same_set_lt_nat_LtNat n) as H.
    destruct H as [HL HR].
    pose proof (LtNat_finite n) as HF.
    apply Finite_downward_closed with (LtNat n); auto.
Qed.
Print Assumptions lt_nat_finite.
(* classic, Extensionality_Ensembles *)

Lemma LtNat_cardinal:
    forall n, cardinal nat (LtNat n) n.
Proof.
    intros. induction n; simpl.
    - apply card_empty.
    - apply card_add; auto.
      unfold not. intros. destruct n.
      + inversion H.
      + apply LtNat_lt in H.
        contradiction (Nat.lt_irrefl _ H).
Qed.

Lemma lt_nat_cardinal:
    forall n, cardinal nat (fun m => m < n) n.
Proof.
    intros.
    apply Same_set_Finite_same_cardinal with (LtNat n).
    split; apply Same_set_lt_nat_LtNat.
    apply LtNat_finite.
    apply LtNat_cardinal.
Qed.
Print Assumptions lt_nat_cardinal.
(* classic, Extensionality_Ensembles *)
