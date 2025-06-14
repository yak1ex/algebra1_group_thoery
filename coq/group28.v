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
From GROUP Require Import group26.
Import GROUP.group21.
Import GROUP.group23.
Import GROUP.group26.

(* 2.8 正規部分群と剰余群 *)

Definition NormalSubGroup G op {H} N: Prop :=
    (@SubGroup G op N H) /\ (forall g n, In _ N n -> In _ N (g <*> n <*> ! g)).

Lemma normal_subgroup_coset:
    forall G op {H} g K HK, (@NormalSubGroup G op H K) -> Same_set _ (@LeftCoset G op H g K HK) (@RightCoset G op H K g HK).
Proof.
    intros. split; unfold Included; intros.
    - induction H1. induction H0. induction H0.
      set (HC := RightCoset_cons _ _ _ g _ _ (H2 g k H1)).
      rewrite op_assoc in HC.
      rewrite (proj2 (op_inv _)) in HC.
      rewrite (proj1 (op_unit _)) in HC.
      auto.
    - induction H1. induction H0. induction H0.
      set (HC := LeftCoset_cons _ _ g _ _ _ (H2 (! g) k H1)).
      rewrite <- op_assoc in HC.
      rewrite <- op_assoc in HC.
      rewrite (proj1 (op_inv _)) in HC.
      rewrite (proj2 (op_unit _)) in HC.
      rewrite <- (inv_inv _ g) in HC.
      auto.
Qed.
