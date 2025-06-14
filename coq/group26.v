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
From GROUP Require Import group24.
Import GROUP.group21.
Import GROUP.group23.
Import GROUP.group24.

(* 2.6 同値関係と剰余類 *)

Inductive LeftCoset G op {H} g K (HK: @SubGroup G op K H) : G -> Prop :=
| LeftCoset_cons: forall k, In _ K k -> LeftCoset G op g K HK (g <*> k).

Inductive RightCoset G op {H} K g (HK: @SubGroup G op K H) : G -> Prop :=
| RightCoset_cons: forall k, In _ K k -> RightCoset G op K g HK (k <*> g).

Lemma coset_injective:
  forall G op {H:Group G op} K (HK: @SubGroup G op K H) g,
  injective G G (fun x => g <*> x) /\
  Same_set _ (Im G G K (fun x => g <*> x)) (LeftCoset G op g K HK).
Proof.
  intros; unfold injective; split; intros.
  - now apply group_cancel_l with g.
  - unfold Same_set, Included, In; split; intros.
    + apply Im_inv in H0.
      destruct H0 as [x0 [HL HR]].
      rewrite <- HR.
      now apply LeftCoset_cons.
    + destruct H0.
      apply Im_intro with k; auto.
Qed.

(* 命題2.8.18(2)の一部 *)
(* (左)剰余類の濃度は等しい *)
Lemma coset_same_cardinal:
  forall G op {H:Group G op} K (HK: @SubGroup G op K H) m g n,
  cardinal _ K m
  -> cardinal _ (LeftCoset G op g K HK) n
  -> m = n.
Proof.
  intros.
  destruct (coset_injective _ _ _ _ g) as [HL HR].
  apply Same_set_sym in HR.
  pose proof (Same_set_same_cardinal _ _ _ _ HR H1).
  apply eq_sym.
  apply (injective_preserves_cardinal _ _ _ _ _ HL H0 _ H2).
Qed.

(* cardinal_Distjoint_Union *)
(* Union_absorbs *)
(* 
Disjoint _ (LeftCoset G op g1 K HK) (LeftCoset G op g2 K HK)
\/ Same_set (LeftCoset G op g1 K HK) (LeftCoset G op g2 K HK)
*)

(* 系2.6.21(2) 元の位数は群の位数の約数である *)
Lemma element_order_divide_group_order :
    forall G op {H} g n m,
    cardinal _ (Full_set G) n -> (@element_order1 G op H g m) -> Nat.divide m n.
Admitted.
