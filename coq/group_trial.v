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
From GROUP Require Import EnsembleFun.
From Stdlib Require Import Sets.Constructive_sets.

Module Trial1.

(* 逆元の存在を言えば唯一であることが言え、
   逆元をとる操作が関数となることが言えるが
   取り扱いがちょっと面倒になるので逆元をとる操作自体を関数として定義する *)
Class Group (S : Type) :=
{
    op: S -> S -> S;
    inv: S -> S;
    e: S;
    op_unit: forall x, op x e = x /\ op e x = x;
    op_inv: forall x, op x (inv x) = e /\ op (inv x) x = e;
    op_assoc: forall x y z, op (op x y) z = op x (op y z)
}.

(* Z.opp は符号の反転 *)
Instance ZGroup : Group Z.
  split with Z.add Z.opp Z.zero.
  intros. split. apply Z.add_0_r. apply Z.add_0_l.
  intros. split. apply Z.add_opp_diag_r. apply Z.add_opp_diag_l.
  intros. apply Zplus_assoc_reverse.
Qed.

(* ref. https://www.tildedave.com/2019/07/18/formalizing-lagranges-theorem-in-coq.html *)

Notation "x <*> y" := (op x y) (at level 40, left associativity).
Notation "! x" := (inv x) (at level 35, right associativity).

Lemma group_cancel_l: forall a b c, a <*> b = a <*> c -> b = c.
Proof.
    intros. apply (f_equal (op (! a))) in H.
    repeat rewrite <- op_assoc in H.
    (* proj2: forall [A B: Prop], A /\ B -> B *)
    rewrite (proj2 (op_inv a)) in H.
    rewrite (proj2 (op_unit b)) in H.
    rewrite (proj2 (op_unit c)) in H.
    exact H.
Qed.

Definition homomoriphic' {S1: Type} {S2: Type} (f: S1 -> S2) {H1: Group S1} {H2: Group S2} :=
    forall x y, f (op x y) = op (f x) (f y).


Definition homomorphic {S1: Type} {S2: Type}
    (f: S1 -> S2) (op1: S1 -> S1 -> S1) (op2: S2 -> S2 -> S2) :=
    forall x y, f (op1 x y) = op2 (f x) (f y).

Example hopp' : homomoriphic' Z.opp.
Proof.
    unfold homomoriphic'. intros.
    (* Group に関する性質しか使えない *)
    Abort.

Example hopp : homomorphic Z.opp Z.add Z.add.
Proof.
    unfold homomorphic. intros. ring.
    (* 整数が環であることを使って横着 *)
Qed.

End Trial1.
