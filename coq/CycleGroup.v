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

Import GROUP.group21.
Import GROUP.group23.

Inductive CycleElementPos G op g {H:Group G op} : G -> Prop :=
| cycle_element_pos_single: CycleElementPos G op g g
| cycle_element_pos_cons: forall x, CycleElementPos G op g x -> CycleElementPos G op g (op g x).

Inductive CycleElementNeg G op g {H:Group G op} : G -> Prop :=
| cycle_element_neg_single: CycleElementNeg G op g (inv g)
| cycle_element_neg_cons: forall x, CycleElementNeg G op g x -> CycleElementNeg G op g (op (inv g) x).

Inductive CycleElement G op g {H:Group G op} : G -> Prop :=
| cycle_element_pos: forall x, CycleElementPos G op g x -> CycleElement G op g x
| cycle_element_unit: CycleElement G op g e
| cycle_element_neg: forall x, CycleElementNeg G op g x -> CycleElement G op g x.

Hint Constructors CycleElementPos : core.
Hint Constructors CycleElementNeg : core.
Hint Constructors CycleElement : core.

Lemma cycle_element_pos_cycle_group:
    forall G op g H x, (@CycleElementPos G op g H x) -> In _ (CycleGroup G op g) x.
Proof.
    unfold CycleGroup. intros. induction H0; auto with sets.
Qed.

Lemma cycle_element_neg_cycle_group:
    forall G op g H x, (@CycleElementNeg G op g H x) -> In _ (CycleGroup G op g) x.
Proof.
    unfold CycleGroup. intros. induction H0; auto with sets.
Qed.

Lemma cycle_element_cycle_group:
    forall G op g H x, (@CycleElement G op g H x) -> In _ (CycleGroup G op g) x.
Proof.
    intros. inversion H0; auto using cycle_element_pos_cycle_group, cycle_element_neg_cycle_group with sets.
    - unfold CycleGroup. auto.
Qed.

Lemma inv_cycle_element_pos:
    forall G op g H x, (@CycleElementPos G op g H x) -> CycleElementNeg G op g (inv x).
Proof.
    intros. induction H0; auto.
    - rewrite <- inv_op.
      rewrite (cycle_group_arbel _ _ _ g (inv x) (inv g)).
      + apply cycle_element_neg_cons; auto.
      + apply cycle_element_neg_cycle_group; auto.
      + unfold CycleGroup. auto with sets.
Qed.

Lemma inv_cycle_element_neg:
    forall G op g H x, (@CycleElementNeg G op g H x) -> CycleElementPos G op g (inv x).
Proof.
    intros. induction H0.
    - rewrite <- inv_inv. auto.
    - rewrite <- inv_op, <- inv_inv.
      rewrite (cycle_group_arbel _ _ _ g (inv x) g); auto.
      + apply cycle_element_pos_cycle_group. auto.
      + unfold CycleGroup. auto with sets.
Qed.

Lemma cycle_element_pos_pos:
    forall G op g H x y, (@CycleElementPos G op g H x)
    -> CycleElementPos G op g y
    -> CycleElementPos G op g (op x y).
Proof.
    intros. generalize dependent x. induction H1.
    - intros.
      rewrite (cycle_group_arbel _ _ _ g x g); auto.
      + apply cycle_element_pos_cycle_group; auto.
      + unfold CycleGroup; auto with sets.
    - intros.
      rewrite <- op_assoc.
      rewrite (cycle_group_arbel _ _ _ g x0 g); auto.
      + apply cycle_element_pos_cycle_group; auto.
      + unfold CycleGroup; auto with sets.
Qed.

Lemma cycle_element_neg_neg:
    forall G op g H x y, (@CycleElementNeg G op g H x)
    -> CycleElementNeg G op g y
    -> CycleElementNeg G op g (op x y).
Proof.
    intros. generalize dependent x. induction H1.
    - intros.
      rewrite (cycle_group_arbel _ _ _ g x (inv g)); auto.
      + apply cycle_element_neg_cycle_group; auto.
      + unfold CycleGroup; auto with sets.
    - intros.
      rewrite <- op_assoc.
      rewrite (cycle_group_arbel _ _ _ g x0 (inv g)); auto.
      + apply cycle_element_neg_cycle_group; auto.
      + unfold CycleGroup; auto with sets.
Qed.

Lemma cycle_element_pos_neg:
    forall G op g H x y, (@CycleElementPos G op g H x)
    -> CycleElementNeg G op g y
    -> CycleElement G op g (op x y).
Proof.
    intros. generalize dependent x. induction H1.
    - intros. induction H0.
      + rewrite (proj1 (op_inv _)).
        apply cycle_element_unit.
      + rewrite op_assoc.
        rewrite (cycle_group_arbel _ _ _ g x (inv g)).
        * rewrite <- op_assoc.
          rewrite (proj1 (op_inv _)).
          rewrite (proj2 (op_unit _)).
          apply cycle_element_pos.
          auto.
        * apply cycle_element_pos_cycle_group. auto.
        * apply generated_inv; auto with sets.
    - intros. inversion H0.
      + rewrite <- op_assoc.
        rewrite (proj1 (op_inv _)).
        rewrite (proj2 (op_unit _)).
        rewrite <- H2.
        apply cycle_element_neg.
        auto.
      + rewrite <- op_assoc, (op_assoc g).
        rewrite (cycle_group_arbel _ _ _ g x1 (inv g)).
        * rewrite <- op_assoc.
          rewrite (proj1 (op_inv _)).
          rewrite (proj2 (op_unit _)).
          apply IHCycleElementNeg.
          auto.
        * apply cycle_element_pos_cycle_group.
          auto.
        * apply generated_inv; auto with sets.
Qed.

Lemma cycle_element_neg_pos:
    forall G op g H x y, (@CycleElementNeg G op g H x)
    -> CycleElementPos G op g y
    -> CycleElement G op g (op x y).
Proof.
    intros.
    rewrite (cycle_group_arbel _ _ _ g x _).
    - apply cycle_element_pos_neg; auto.
    - apply cycle_element_neg_cycle_group; auto.
    - apply cycle_element_pos_cycle_group; auto.
Qed.

Lemma cycle_group_cycle_element:
    forall G op g H x, In _ (@CycleGroup G op g H) x -> CycleElement G op g x.
Proof.
    intros. induction H0; auto.
    - inversion H0. auto.
    - induction IHgenerated.
      + apply cycle_element_neg.
        apply inv_cycle_element_pos.
        auto.
      + rewrite <- inv_unit. auto with sets.
      + apply cycle_element_pos.
        apply inv_cycle_element_neg; auto.
    - inversion IHgenerated; inversion IHgenerated0;
      auto using cycle_element_pos_pos,
                 cycle_element_pos_neg,
                 cycle_element_neg_pos,
                 cycle_element_neg_neg.
      + rewrite (proj1 (op_unit _)); auto.
      + rewrite (proj2 (op_unit _)); auto.
      + rewrite (proj2 (op_unit _)); auto.
      + rewrite (proj2 (op_unit _)); auto.
      + rewrite (proj1 (op_unit _)); auto.
Qed.
Local Open Scope Z_scope.
Inductive ZCycleElement (n: nat) (H: Z.of_nat n > 0) :=
|   ICE (x: { x : Z | 0 <= x < Z.of_nat n}): ZCycleElement n H.

Check ICE.

Lemma guard: forall n (H: Z.of_nat n > 0) x, 0 <= x mod Z.of_nat n < Z.of_nat n.
Proof.
    intros.
    apply Z_mod_lt.
    auto.
Defined.

Check guard.

Check Zmod_small.

Definition zcycle_op (n: nat) (H: Z.of_nat n > 0) (x: ZCycleElement n H) (y: ZCycleElement n H) :=
match x with
| ICE _ _ xx =>
    match y with
    | ICE _ _ yy => ICE n H (exist _ (Z.modulo (proj1_sig xx + proj1_sig yy) (Z.of_nat n)) (guard n H (proj1_sig xx + proj1_sig yy)))
    end
end.

Definition zcycle_inv (n: nat) (H: Z.of_nat n > 0) (x: ZCycleElement n H) :=
match x with
| ICE _ _ xx => ICE n H (exist _ (Z.modulo (Z.opp (proj1_sig xx)) (Z.of_nat n)) (guard n H (Z.opp (proj1_sig xx))))
end.

Definition zcycle_unit (n: nat) (H: Z.of_nat n > 0) := (ICE n H (exist _ 0 (guard n H 0))).

Lemma zcycle_element_group:
    forall n H, Group (ZCycleElement n H) (zcycle_op n H).
Proof.
    intros. split with (zcycle_inv n H) (zcycle_unit n H).
    - unfold zcycle_inv, zcycle_unit in *. intros.
      split; induction x; simpl;
      pose (Zmod_small (proj1_sig x) (Z.of_nat n) (proj2_sig x)) as Heq;
      f_equal; [rewrite (Z.add_0_r _)|];
      apply eq_sig with Heq; apply proof_irrelevance.
    - unfold zcycle_inv, zcycle_unit in *. intros.
      induction x.
      pose (Zmod_small (proj1_sig x) (Z.of_nat n) (proj2_sig x)) as Heq.
      assert (Heq' : (proj1_sig x + - proj1_sig x mod Z.of_nat n) mod Z.of_nat n = 0).
      {
        rewrite <- Heq at 1.
        rewrite <- Zplus_mod, Z.add_opp_diag_r, Zmod_0_l. reflexivity.
      }
      split; induction x; simpl; f_equal;
      [|rewrite Z.add_comm];
      apply eq_sig with Heq'; apply proof_irrelevance.
    - intros. induction x. induction y. induction z. simpl. f_equal.
      pose (Zmod_small (proj1_sig x) (Z.of_nat n) (proj2_sig x)) as Heqx.
      pose (Zmod_small (proj1_sig x1) (Z.of_nat n) (proj2_sig x1)) as Heqx1.
      assert (Heq: (((proj1_sig x + proj1_sig x0) mod Z.of_nat n + proj1_sig x1) mod Z.of_nat n)
        = ((proj1_sig x + (proj1_sig x0 + proj1_sig x1) mod Z.of_nat n) mod Z.of_nat n)).
      {
        rewrite <- Heqx at 2.
        rewrite <- Zplus_mod.
        rewrite <- Heqx1 at 1.
        rewrite <- Zplus_mod, Z.add_assoc.
        reflexivity.
      }
      apply eq_sig with Heq.
      apply proof_irrelevance.
Qed.

Print Assumptions zcycle_element_group.
(* proof_irrelevance *)
Check subset_eq_compat.
Check guard.

Local Close Scope Z_scope.
Inductive NCycleElement (n: nat) (H: 0 < n) :=
|   NCE (x: { x : nat | x < n}): NCycleElement n H.

Lemma Nguard: forall n (H: 0 < n) x, x mod n < n.
Proof.
    intros.
    apply Nat.mod_bound_pos.
    apply Nat.le_0_l.
    auto.
Defined.

Check Nguard.

Definition ncycle_unit (n: nat) (H: 0 < n) := (NCE n H (exist _ (0 mod n) (Nguard n H 0))).

Definition ncycle_op (n: nat) (H: 0 < n) (x: NCycleElement n H) (y: NCycleElement n H) :=
match x,y with
| (NCE _ _ (exist _ xx _)),(NCE _ _ (exist _ yy _)) => NCE n H (exist _ ((xx + yy) mod n) (Nguard n H (xx + yy)))
end.

Definition ncycle_inv (n: nat) (H: 0 < n) (x: NCycleElement n H) :=
match x with
| NCE _ _ (exist _ xx _) => NCE n H (exist _ ((n - xx) mod n) (Nguard n H (n - xx)))
end.

Lemma ncycle_element_group:
    forall n H, Group (NCycleElement n H) (ncycle_op n H).
Proof.
    intros. split with (ncycle_inv n H) (ncycle_unit n H).
    - unfold ncycle_inv, ncycle_unit in *;
      intros; split; induction x; induction x; simpl;
      f_equal;
      apply subset_eq_compat;
      rewrite (Nat.Div0.mod_0_l _);
      [rewrite Nat.add_0_r|rewrite Nat.add_0_l];
      apply Nat.mod_small;
      auto.
    - unfold ncycle_inv, ncycle_unit; intros; split;
      induction x; induction x; simpl;
      f_equal;
      apply subset_eq_compat;
      [|rewrite Nat.add_comm];
      rewrite <- (Nat.mod_small x n p) at 1;
      rewrite <- Nat.Div0.add_mod;
      rewrite (Nat.add_sub_assoc _ _ _ (Nat.lt_le_incl _ _ p));
      rewrite (Nat.add_sub_swap x n x (le_n x));
      rewrite (Nat.sub_diag _);
      rewrite Nat.add_0_l, Nat.Div0.mod_same, Nat.Div0.mod_0_l;
      auto.
    - unfold ncycle_inv, ncycle_unit; intros;
      induction x; induction x;
      induction y; induction x0;
      induction z; induction x1; simpl;
      f_equal;
      apply subset_eq_compat;
      rewrite <- (Nat.mod_small x n p) at 2;
      rewrite <- (Nat.mod_small x1 n p1) at 1;
      repeat rewrite <- Nat.Div0.add_mod;
      rewrite Nat.add_assoc.
      auto.
Qed.
Print Assumptions ncycle_element_group.
(* proof_irrelevance *)

(* TODO: make use of automation *)
Lemma cycle_element_subgroup : forall G op g H, (@SubGroup G op (@CycleElement G op g H) H).
Proof.
  intros; split; intros.
  - destruct H0; destruct H1.
    + apply cycle_element_pos, cycle_element_pos_pos; auto.
    + apply cycle_element_pos; rewrite (proj1 (op_unit _)); auto.
    + apply cycle_element_pos_neg; auto.
    + apply cycle_element_pos; rewrite (proj2 (op_unit _)); auto.
    + rewrite (proj1 (op_unit _)); apply cycle_element_unit.
    + apply cycle_element_neg; rewrite (proj2 (op_unit _)); auto.
    + apply cycle_element_neg_pos; auto.
    + apply cycle_element_neg; rewrite (proj1 (op_unit _)); auto.
    + apply cycle_element_neg, cycle_element_neg_neg; auto.
  - apply cycle_element_unit.
  - destruct H0.
    + apply cycle_element_neg, inv_cycle_element_pos; auto.
    + rewrite <- inv_unit; apply cycle_element_unit.
    + apply cycle_element_pos, inv_cycle_element_neg; auto.
Qed.
