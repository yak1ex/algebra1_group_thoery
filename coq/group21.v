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

(* 2.1節 *)

(* 定義2.1.1 *)
(* 教科書では単位元、逆元の存在だけ言って唯一であることを
   後から示している(命題2.1.11(1),(2))が
   取り扱いがちょっと面倒になるので最初から唯一の単位元と逆元をとる操作として定義する *)
(* ここでの class はプログラミング的な方のクラス(型クラス) *)
Class Group (S : Type) (op: S -> S -> S) :=
{
    inv: S -> S;
    e: S;
    op_unit: forall x, op x e = x /\ op e x = x;
    op_inv: forall x, op x (inv x) = e /\ op (inv x) x = e;
    op_assoc: forall x y z, op (op x y) z = op x (op y z)
}.

(* 実例：整数Zは群である *)
Instance ZPGroup : Group Z Z.add.
  split with Z.opp Z.zero.
  intros. split. apply Z.add_0_r. apply Z.add_0_l.
  intros. split. apply Z.add_opp_diag_r. apply Z.add_opp_diag_l.
  intros. apply Zplus_assoc_reverse.
Qed.

(* ref. https://stackoverflow.com/questions/48394056/using-implicit-type-class-parameters-in-coq-notation *)
Definition group_op {S op} {G: @Group S op} := op.
(* Hint Unfold group_op: core. *)

(* ref. https://www.tildedave.com/2019/07/18/formalizing-lagranges-theorem-in-coq.html *)

(* 表記(notation)を追加できる *)
Notation "x <*> y" := (group_op x y) (at level 40, left associativity).
Notation "! x" := (inv x) (at level 35, right associativity).

(* Z以外の例：クラインの四元群 *)
Inductive klein :=
    k_I | k_X | k_Y | k_Z.

(* 演算の定義 *)
Definition klein_op k1 k2 :=
    match (k1, k2) with
    | (k_I, _) => k2
    | (_, k_I) => k1
    | (k_X, k_X) => k_I
    | (k_X, k_Y) => k_Z
    | (k_X, k_Z) => k_Y
    | (k_Y, k_X) => k_Z
    | (k_Y, k_Y) => k_I
    | (k_Y, k_Z) => k_X
    | (k_Z, k_X) => k_Y
    | (k_Z, k_Y) => k_X
    | (k_Z, k_Z) => k_I
    end.

(* 逆元は自分自身 *)
Definition klein_inv (k1: klein) := k1.

(* 補題：自乗したら単位元 *)
Lemma klein_double : forall k, klein_op k k = k_I.
    simple destruct k; [split; auto | auto | auto | auto].
Qed.

Instance KGroup : Group klein klein_op.
    split with klein_inv k_I.
    intros. split; destruct x; auto.
    intros. split; unfold klein_inv; apply klein_double.
    intros. destruct x; destruct y; destruct z; compute; reflexivity.
Qed.

(* 2.1.3あたり *)
(* 指数表現 *)
Fixpoint gpower' {G op} {H:Group G op} (g:G) (p:positive): G :=
  match p with
  | (q~1)%positive => let g' := (gpower' g q) in g' <*> g' <*> g
  | (q~0)%positive => let g' := (gpower' g q) in g' <*> g'
  | 1%positive => g 
  end.

Definition gpower {G op} {H:Group G op} (g:G) (z:Z): G :=
  match z with
  | Z0 => e
  | Zpos p => gpower' g p
  | Zneg p => ! gpower' g p
  end.

Notation "x <^> y" := (gpower x y) (at level 30, right associativity).

(* 命題2.1.9(1) *)
Lemma group_cancel_l: forall {G op} {HG: Group G op} a b c, a <*> b = a <*> c -> b = c.
Proof.
    intros. apply (f_equal (group_op (! a))) in H.
    repeat rewrite <- op_assoc in H.
    (* proj2: forall [A B: Prop], A /\ B -> B *)
    rewrite (proj2 (op_inv a)) in H.
    repeat rewrite (proj2 (op_unit _)) in H.
    (*
    rewrite (proj2 (op_unit b)) in H.
    rewrite (proj2 (op_unit c)) in H.
    *)
    exact H.
Qed.

Lemma group_cancel_r: forall {G op} {HG: Group G op} a b c, a <*> b = c <*> b -> a = c.
Proof.
    intros. apply (f_equal (fun x => group_op x (! b))) in H.
    repeat rewrite op_assoc in H.
    rewrite (proj1 (op_inv b)) in H.
    repeat rewrite (proj1 (op_unit _)) in H.
    exact H.
Qed.

(* 命題2.1.11(1),(2)は前述のように前提になっている *)

(* 命題2.1.11(3) *)
Lemma inv_op: forall G op H x y, op (! x) (! y) = (@inv G op H) (op y x).
Proof.
    intros.
    pose (proj1 (op_inv (op y x))) as Hopinv.
    apply (f_equal (op (inv y))) in Hopinv.
    rewrite <- op_assoc, <- op_assoc in Hopinv.
    rewrite (proj2 (op_inv y)) in Hopinv.
    rewrite (proj2 (op_unit _)) in Hopinv.
    apply (f_equal (op (inv x))) in Hopinv.
    rewrite <- op_assoc in Hopinv.
    rewrite (proj2 (op_inv x)) in Hopinv.
    rewrite (proj2 (op_unit _)) in Hopinv.
    rewrite (proj1 (op_unit _)) in Hopinv.
    symmetry.
    auto.
Qed.

(* 命題2.1.11(4) *)
Lemma inv_inv: forall {G} op {H} x, x = inv ((@inv G op H) x).
Proof.
    intros.
    destruct (op_inv (! x)) as [Hinv _].
    apply (f_equal (op x)) in Hinv.
    rewrite <- op_assoc in Hinv.
    rewrite (proj1 (op_inv _)) in Hinv.
    rewrite (proj1 (op_unit _)) in Hinv.
    rewrite (proj2 (op_unit _)) in Hinv.
    symmetry.
    auto.
Qed.

(* 単位元の逆元は単位元である *)
Lemma inv_unit: forall G op H, e = inv (@e G op H).
Proof.
    intros.
    destruct (op_inv e) as [H0 _].
    rewrite (proj2 (op_unit (! e))) in H0.
    symmetry.
    exact H0.
Qed.

(* 指数表現に関する補題群 *)
Lemma gpower'_g_comm:
    forall {G op} {H:Group G op} g p, gpower' g p <*> g = g <*> gpower' g p.
Proof.
    intros. induction p; simpl.
    - simpl.
      repeat rewrite <- op_assoc. rewrite <- IHp.
      Check op_assoc.
      rewrite (op_assoc (gpower' g p) g _), <- IHp.
      now repeat rewrite <- op_assoc.
    - simpl.
      rewrite <- op_assoc, <- IHp.
      rewrite (op_assoc _ g), <- IHp.
      now rewrite <- op_assoc.
    - reflexivity.
Qed.

Lemma gpower'_comm:
    forall {G op} {H:Group G op} g p q,
    gpower' g p <*> gpower' g q = gpower' g q <*> gpower' g p.
Proof.
    intros. generalize dependent p. induction q; intros; simpl.
    - repeat rewrite op_assoc. rewrite <- (gpower'_g_comm g).
      rewrite <- (op_assoc _ (gpower' g p)).
      rewrite <- (IHq p).
      repeat rewrite <- op_assoc.
      now rewrite <- (IHq p).
    - repeat rewrite op_assoc. rewrite <- (IHq p).
      repeat rewrite <- op_assoc.
      now rewrite <- (IHq p).
    - apply gpower'_g_comm.
Qed.  

Lemma gpower'_inv:
    forall {G op} {H:Group G op} g p, ! gpower' g p = gpower' (! g) p.
Proof.
    intros. induction p; simpl; repeat rewrite <- inv_op;
    unfold group_op; repeat rewrite IHp; fold group_op; auto.
    now rewrite op_assoc, gpower'_g_comm, <- op_assoc, <- op_assoc, gpower'_g_comm.
Qed.

Lemma gpower'_succ:
    forall {G op} {H:Group G op} g p,
    gpower' g (Pos.succ p) = (gpower' g p) <*> g.
Proof.
    intros. induction p; simpl; auto.
    - rewrite IHp.
      rewrite op_assoc. rewrite <- (op_assoc g).
      rewrite <- gpower'_g_comm.
      now repeat rewrite <- op_assoc.
Qed.

(* 定義2.1.12,命題2.1.14(置換群)はパス *)
