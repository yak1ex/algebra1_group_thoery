(* From Coq Require Export Bool.
From Coq Require Export Arith.Arith.
From Coq Require Export PeanoNat.
From Coq Require Export Arith.EqNat.
From Coq Require Export Lia. *)
From Stdlib Require Export ZArith.
From Stdlib Require Import FinFun.
From Stdlib Require Import Sets.Image.
From Stdlib Require Import Logic.ProofIrrelevance.
From Stdlib Require Import Sets.Integers.
From Stdlib Require Import Sets.Infinite_sets.
From Stdlib Require Import Logic.ConstructiveEpsilon.
From Stdlib Require Import Sets.Constructive_sets.
From GROUP Require Import EnsembleFun.
From GROUP Require Import group21.
From GROUP Require Import group23.
From GROUP Require Import group25.
From GROUP Require Import CycleGroup.

Import GROUP.group21.
Import GROUP.group23.
Import GROUP.group25.
Import GROUP.CycleGroup.

(* 2.4 元の位数 *)

(* 3種類 位数を定義 *)

(* 命題2.4.20：巡回部分群の位数が生成元の位数 *)
Definition element_order1 G op {H} g ord : Prop := cardinal G (@CycleGroup G op g H) ord.

(* 定義2.4.1 *)
(* 最小の表現の違い *)
(* それより小さいものはない *)
Definition element_order2 G op {H:Group G op} g ord : Prop :=
    ord > 0 /\ g <^> Z.of_nat ord = e /\ forall n, n > 0 -> (g <^> Z.of_nat n) = e -> ~ n < ord.

(* それより小さいものは全て条件を満たさない *)
Definition element_order3 G op {H:Group G op} g ord: Prop :=
    ord > 0 /\ (g <^> Z.of_nat ord) = e /\ forall n, 0 < n < ord -> (g <^> Z.of_nat n) <> e.

(* これらが同値であることを示したい *)
(* 2<=>3は容易 *)
(* 1=>3は条件付き：群Gの元の等価性が決定可能(decidable) ∀g1,g2∈G, g1=g2\/g1<>g2 *)

(* 補題いっぱい *)

Lemma element_order3_full:
    forall G op {H:Group G op} g ord,
    element_order3 G op g ord ->
    forall i j, i < j < ord -> g <^> Z.of_nat i <> g <^> Z.of_nat j.
Proof.
    unfold element_order3, not. intros.
    destruct H0 as (HL & HC & HR).
    pose proof (Nat.lt_le_incl _ _ (proj1 H1)) as Hij.
    pose proof (Nat.lt_add_lt_sub_l i j 0) as Hji.
    rewrite Nat.add_0_r in Hji.
    pose proof ((proj1 Hji) (proj1 H1)) as Hji'.
    apply HR with (j - i).
    - split; auto.
      destruct i.
      + rewrite Nat.sub_0_r.
        apply H1.
      + pose proof (Nat.lt_0_succ i) as Hi.  
        pose proof (Nat.sub_lt _ _ Hij Hi) as Hjij.
        apply Nat.lt_trans with j; auto.
        apply H1.
    - pose proof (Nat2Z.inj_sub _ _ Hij) as Heq.
      rewrite Heq, <- Z.add_opp_r.
      pose proof (homomorphic_gpower g) as Hhom.
      unfold homomorphic in Hhom.
      rewrite Hhom.
      rewrite gpower_inv, H2.
      now rewrite (proj1 (op_inv _)).
Qed.

#[refine]
Instance gpowerEF {G op} {H: Group G op} g n : (@EnsembleFun nat G) :=
{
    f := fun m => gpower g (Z.of_nat m);
    U := fun m => m < n;
    V := fun p => exists m, m < n /\ p = g <^> (Z.of_nat m);
}.
Proof.
    intros.
    exists x; auto.
Defined.

Lemma gpowerEF_InjectiveEF:
  forall G op {H:Group G op} g n,
  element_order3 G op g n -> InjectiveEF (gpowerEF g n).
Proof.
  unfold InjectiveEF; intros.
  pose proof (element_order3_full _ _ _ _ H0).
  unfold element_order3 in *.
  destruct H0 as (HL & HC & HR).
  destruct (x ?= y) eqn:E.
  - apply Nat.compare_eq; auto.
  - apply Nat.compare_lt_iff in E.
    pose proof (H4 x y (conj E H2)) as HCon.
    contradiction.
  - apply Nat.compare_gt_iff in E.
    pose proof (H4 y x (conj E H1)) as HCon.
    apply eq_sym in H3.
    contradiction.
Qed.

Lemma gpowerEF_SurjectiveEF: forall {G op} {H: Group G op} g n,
  element_order3 G op g n -> SurjectiveEF (gpowerEF g n).
Proof.
  intros. unfold SurjectiveEF, V; simpl. intros y [x' [HL HR]].
  exists x'; auto.
Qed.

Lemma Same_set_CycleGroup_gpower:
  forall G op H g, (Same_set _ (@CycleGroup G op g H) (fun m => exists p, m = g <^> p)).
Proof.
  unfold Same_set, Included, In, CycleGroup. split; intros.
  - induction H0.
    + exists 0%Z. now simpl.
    + induction H0. exists 1%Z. now simpl.
    + destruct IHgenerated as [p Heq].
      exists (-p)%Z.
      now rewrite gpower_inv, Heq.
    + destruct IHgenerated as [x' Heqx']. 
      destruct IHgenerated0 as [y' Heqy'].
      exists (x' + y')%Z.
      rewrite Heqx', Heqy'.
      now rewrite homomorphic_gpower.
  - destruct H0 as [p Hp].
    destruct p.
    + simpl in *. rewrite Hp. apply generated_unit.
    + generalize dependent x. induction p; intros.
      * simpl in *. rewrite Hp.
        pose proof (IHp (gpower' g p) eq_refl) as Hgpp.
        apply generated_cons.
        -- apply generated_cons; auto.
        -- apply generated_single, In_singleton.
      * simpl in *. rewrite Hp.    
        pose proof (IHp (gpower' g p) eq_refl) as Hgpp.
        apply generated_cons; auto.
      * simpl in *. rewrite Hp.
        apply generated_single, In_singleton.
    + generalize dependent x. induction p; intros.
      * simpl in *. rewrite Hp.
        pose proof (IHp (! gpower' g p) eq_refl) as Hgpp.
        rewrite <- inv_op, <- inv_op.
        apply generated_cons.
        -- apply generated_inv, generated_single, In_singleton.
        -- apply generated_cons; auto.
      * simpl in *. rewrite Hp.
        pose proof (IHp (! gpower' g p) eq_refl) as Hgpp.
        rewrite <- inv_op.
        apply generated_cons; auto.
      * simpl in *. rewrite Hp.
        apply generated_inv, generated_single, In_singleton.
Qed.

Lemma gpower_order_plus_mult:
    forall {G op} {HG:Group G op} g m n k,
    g <^> m = e -> g <^> n = g <^> (n + m * k).
Proof.
    intros. induction k; rewrite homomorphic_gpower.
    - rewrite Z.mul_0_r. simpl. now rewrite (proj1 (op_unit _)).
    - destruct m; simpl.
      + now rewrite (proj1 (op_unit _)).
      + simpl in H.
        now rewrite gpower'_mult, H, <- gpower'_unit, (proj1 (op_unit _)).
      + simpl in H.
        now rewrite gpower'_inv, gpower'_mult, <- gpower'_inv, H, <- gpower'_unit, (proj1 (op_unit _)).
    - destruct m; simpl.
      + now rewrite (proj1 (op_unit _)).
      + simpl in H.
        now rewrite gpower'_mult, H, <- gpower'_unit, <- inv_unit, (proj1 (op_unit _)).
      + simpl in H. apply (f_equal inv) in H. rewrite <- inv_inv, <- inv_unit in H.
        now rewrite gpower'_mult, H, <- gpower'_unit, (proj1 (op_unit _)).
Qed.

Lemma gpower_Same_set_lt_nat:
    forall G op {H:Group G op} g n,
    n > 0 -> g <^> (Z.of_nat n) = e
    -> Same_set _ (fun m => exists p, p < n /\ m = g <^> (Z.of_nat p)) (fun m => exists p, m = g <^> p).
Proof.
    intros. split; unfold Included, In; intros.
    - destruct H2 as [p [HL HR]].
      exists (Z.of_nat p); auto.
    - destruct H2 as [p Heq].
      pose proof (gpower_order_plus_mult _ _ (p mod Z.of_nat n) (p / Z.of_nat n) H1).
      pose proof (Z_div_mod_eq_full p (Z.of_nat n)).
      rewrite Z.add_comm in H3.
      rewrite <- H3 in H2.
      rewrite <- H2 in Heq.
      assert (Heq': (Z.of_nat (Z.to_nat (p mod Z.of_nat n)%Z)) = (p mod Z.of_nat n)%Z). {
        apply Z2Nat.id.
        apply Z.mod_pos_bound.
        rewrite <- Nat2Z.inj_0.
        apply inj_lt; auto.
      }
      rewrite <- Heq' in Heq.
      exists (Z.to_nat (p mod Z.of_nat n)); split; auto.
      rewrite <- (Nat2Z.id n) at 2.
      pose proof (Nat2Z.is_nonneg n).
      pose proof (inj_gt _ _ H0).
      rewrite Nat2Z.inj_0 in H5.
      pose proof (Z.mod_pos_bound p (Z.of_nat n) (Z.gt_lt _ _ H5)).
      destruct H6.
      apply Z2Nat.inj_lt; auto.
Qed.

Definition eq_dec G := forall j k:G, {j=k}+{j<>k}. 

Lemma decidable_eq_G_decidable_in_kernel:
  forall G op {H:Group G op} g,
  eq_dec G ->
  forall n : nat,
  {g <^> Z.of_nat n = e /\ n > 0} +
  {~ (g <^> Z.of_nat n = e /\ n > 0)}.
Proof.
  intros. unfold gt. pose proof (lt_dec 0 n) as Hlt.
  destruct (X (g <^> Z.of_nat n) e);
  destruct Hlt; [left|right|right|right];
  auto; unfold not; intros; destruct H0; contradiction.
Qed.

Lemma gpower_kernel_nontrivial_element_order3_exist:
  forall G op {H:Group G op} g,
  eq_dec G ->
  (exists n, (g <^> Z.of_nat n = e /\ n > 0))
  -> (exists n, n > 0 /\ g <^> Z.of_nat n = e /\ forall x,(0 < x < n -> g <^> Z.of_nat x <> e)).
Proof.
  intros.
  pose proof (decidable_eq_G_decidable_in_kernel G op g X).
  eapply (epsilon_smallest _ H1) in H0.
  destruct H0 as [n [[HLL HLR] HR]].
  exists n; repeat split; auto.
  - unfold not; intros.
    pose proof (HR x).
    pose proof (H3 (conj H2 (proj1 H0))).
    apply (proj1 (Nat.le_ngt _ _) H4), H0.
Qed.

Lemma Same_set_im_exists_gpower':
    forall G op {H:Group G op} n g,
    Same_set _ (fun m => exists p, p < n /\ m = g <^> (Z.of_nat p)) (Im _ _ (fun x => x < n) (fun x => g <^> (Z.of_nat x))).
Proof.
  intros; split; unfold Included, In; intros.
  - destruct H0 as [p [HL HR]].
    apply Im_intro with p; auto.
  - apply Im_inv in H0.
    destruct H0 as [x0 [HL HR]].
    exists x0; split; auto.
Qed.

Lemma Same_set_im_exists_gpower:
    forall G op {H:Group G op} g,
    Same_set _ (fun m => exists p, m = g <^> p) (Im _ _ (Full_set Z) (fun x => g <^> x)).
Proof.
  intros; split; unfold Included, In; intros.
  - destruct H0 as [p HH].
    apply Im_intro with p; auto.
    apply Full_intro.
  - apply Im_inv in H0.
    destruct H0 as [x0 [HL HR]].
    now exists x0.
Qed.

Lemma contrapos: forall P Q, (P -> Q) -> ~Q -> ~P.
Proof.
  unfold not. intros. auto.
Qed.

Lemma infinite_included:
  forall U X Y, ~ Finite U X -> Included U X Y -> ~ Finite U Y.
Proof.
  intros.
  apply contrapos with (Finite U X); auto.
  intros.
  apply Finite_downward_closed with Y; auto.
Qed.
Print Assumptions infinite_included.
(* classic, Extensionality_Ensembles *)

Lemma injective_Nat2Z: injective _ _ Z.of_nat.
Proof.
  unfold injective. intros.
  now apply Nat2Z.inj.
Qed.

Lemma infinite_Nat2Z: (~ Finite Z (Im nat Z Integers Z.of_nat)).
Proof.
  pose proof Integers_infinite as H.
  revert H.
  apply contrapos.
  apply (Pigeonhole_ter _ _ _ _ 0). (* probably library defect *)
  apply injective_Nat2Z.
Qed.
Print Assumptions infinite_Nat2Z.
(* classic, Extensionality_Ensembles *)

Lemma Included_Nat2Z_Z: Included _ (Im nat Z Integers Z.of_nat) (Full_set Z).
Proof.
  unfold Included, In. intros.
  apply Full_intro.
Qed.

Lemma infinite_Z: (~ Finite Z (Full_set Z)).
Proof.
  pose proof Included_Nat2Z_Z as H.
  revert H.
  apply infinite_included.
  apply infinite_Nat2Z.
Qed.
Print Assumptions infinite_Z.
(* classic, Extensionality_Ensembles *)

Lemma cardinal_gpower_not_injective:
  forall G op {H:Group G op} g ord,
  cardinal G (fun m : G => exists p : Z, m = g <^> p) ord
  -> ~ injective _ _ (fun p => g <^> p).
Proof.
  intros.
  pose proof (Same_set_im_exists_gpower _ _ g).
  pose proof (Same_set_same_cardinal _ _ _ _ H1 H0).
  pose proof (cardinal_finite _ _ _ H2).
  pose proof infinite_Z.
  apply Pigeonhole_bis with (Full_set Z); auto.
Qed.

Lemma cardinal_gpower_kernel_nontrivial:
  forall G op {H:Group G op} g ord,
  cardinal G (fun m : G => exists p : Z, m = g <^> p) ord
  -> exists n, (g <^> Z.of_nat n = e /\ n > 0).
Proof.
  intros.
  apply cardinal_gpower_not_injective in H0.
  apply not_injective_elim in H0.
  destruct H0 as [x [y [HL HR]]].
  destruct (x ?= y)%Z eqn:E.
  - apply Z.compare_eq_iff in E.
    contradiction.
  - rewrite Z.compare_lt_iff in E.
    assert (HH: g <^> (y - x) = e). {
      rewrite <- Z.add_opp_l.
      rewrite homomorphic_gpower.
      rewrite gpower_inv.
      rewrite HL.
      apply op_inv.
    }
    assert (Hnneg: (0 <= y - x)%Z) by apply Z.le_0_sub, Z.lt_le_incl, E.
    assert (Hpos: (0 < y - x)%Z) by apply Z.lt_0_sub, E.
    assert (H0: (0 <= 0)%Z) by apply Z.le_refl.
    exists (Z.to_nat (y - x)); split.
    now rewrite (Z2Nat.id _ Hnneg).
    rewrite <- Z2Nat.inj_0.
    apply Z2Nat.inj_lt; auto.
  - rewrite Z.compare_gt_iff in E.
    assert (HH: g <^> (x - y) = e). {
      rewrite <- Z.add_opp_r.
      rewrite homomorphic_gpower.
      rewrite gpower_inv.
      rewrite HL.
      apply op_inv.
    }
    assert (Hnneg: (0 <= x - y)%Z) by apply Z.le_0_sub, Z.lt_le_incl, E.
    assert (Hpos: (0 < x - y)%Z) by apply Z.lt_0_sub, E.
    assert (H0: (0 <= 0)%Z) by apply Z.le_refl.
    exists (Z.to_nat (x - y)); split.
    now rewrite (Z2Nat.id _ Hnneg).
    rewrite <- Z2Nat.inj_0.
    apply Z2Nat.inj_lt; auto.
Qed.

(* 同値性の証明 *)

(* 3 => 1 *)
Lemma element_order_3_1:
    forall G op {H} g ord, (@element_order3 G op H g ord) -> (@element_order1 G op H g ord).
Proof.
  intros.
  pose proof (gpowerEF_InjectiveEF _ _ _ _ H0).
  pose proof (gpowerEF_SurjectiveEF _ _ H0).
  pose proof (SurjectiveEF_Same_set_ImEF_V _ _ _ H2).
  pose proof (lt_nat_cardinal ord).
  assert (Hcar: cardinal nat (gpowerEF g ord).(U) ord). {
    apply Same_set_Finite_same_cardinal with (fun m: nat => m < ord); auto with sets.
    apply lt_nat_finite.
  }
  assert (HInUU: Included nat (gpowerEF g ord).(U) (gpowerEF g ord).(U)). {
    unfold Included, In. intros; auto.
  }
  pose proof (InjectiveEF_preserves_cardinal U _ ord H1 Hcar HInUU).
  pose proof (Same_set_CycleGroup_gpower _ _ _ g).
  destruct H0 as [Hord [He Hne]].
  pose proof (gpower_Same_set_lt_nat _ _ _ _ Hord He).
  unfold element_order1.
  apply Same_set_same_cardinal with (fun m : G => exists p : Z, m = g <^> p).
  apply Same_set_sym; auto.
  apply Same_set_same_cardinal with (fun p => exists m, m < ord /\ p = g <^> (Z.of_nat m)); auto.
  apply Same_set_same_cardinal with (ImEF (gpowerEF g ord).(U) (gpowerEF g ord)); auto.
Qed.
Print Assumptions element_order_3_1.
(* classic, Extensionality_Ensembles *)

(* 1 => 3 条件付き *)
Lemma element_order_1_3':
    forall G op {H} g ord,
    eq_dec G ->
    (@element_order1 G op H g ord) -> (@element_order3 G op H g ord).
Proof.
  unfold element_order1, element_order3; intros.
  pose proof (Same_set_CycleGroup_gpower _ _ _ g).
  pose proof (Same_set_same_cardinal _ _ _ _ H1 H0).
  pose proof (cardinal_gpower_kernel_nontrivial _ _ _ _ H2).
  destruct (gpower_kernel_nontrivial_element_order3_exist _ _ g X H3).
  pose proof (element_order_3_1 _ _ _ _ H4).
  unfold element_order1 in H5.
  pose proof (cardinal_unicity _ _ _ H0 _ H5).
  rewrite H6; auto.
Qed.
Print Assumptions element_order_1_3'.
(* classic, Extensionality_Ensembles *)

(* 3 => 2 *)
Lemma element_order_3_2:
    forall G op {H} g ord, (@element_order3 G op H g ord) -> (@element_order2 G op H g ord).
Proof.
  unfold element_order3, element_order2, not; intros.
  destruct H0 as (HL & HC & HR).
  split; auto.
  split; auto.
  intros. apply HR with n; auto.
Qed.

(* 2 => 3 *)
Lemma element_order_2_3:
    forall G op {H} g ord, (@element_order2 G op H g ord) -> (@element_order3 G op H g ord).
Proof.
  unfold element_order2, element_order3, not; intros.
  destruct H0 as (HL & HC & HR).
  split; auto.
  split; auto.
  intros. destruct H0. apply HR with n; auto.
Qed.

(* 命題2.4.5 Gが有限群ならGの任意の元の位数は有限である *)
(* 元によって生成される群の位数が有限である、で形式化 *)
(* 命題2.4.20を事前に使っている *)
Lemma finite_group_finite_order:
    forall G op x (H: Group G op), Finite _ (Full_set G) -> In _ (Full_set G) x -> Finite _ (@generated G op (Singleton _ x) H).
Proof.
    intros.
    apply Finite_downward_closed with (Full_set G); auto.
    apply generated_included.
Qed.
Print Assumptions finite_group_finite_order.
(* classic Extensionality_Ensembles *)
