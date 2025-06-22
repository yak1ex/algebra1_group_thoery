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

Import GROUP.group21.

(* 2.3 部分群と生成元 *)

(* 命題2.3.2 部分群になる必要十分条件 *)
Class SubGroup S op (X: Ensemble S) {H:Group S op} := {
    op_closed: forall x y, In _ X x -> In _ X y -> In _ X (op x y);
    unit_closed: In _ X e;
    inv_closed: forall x, In _ X x -> In _ X (inv x)
}.

(* 群は自分自身の部分群 *)
Lemma group_subgroup:
    forall S op (H: Group S op), SubGroup S op (Full_set S).
Proof.
    intros. split; intros; apply Full_intro.
Qed.

(* 命題2.3.3は(教科書通り)証明略 *)

(* 命題2.3.13の上の定義 *)

(* Xの元による語の集合：単位元、Xの元そのもの、逆元、群演算で生成できるもの *)
(* 教科書の定義そのものではない *)
Inductive generated G op (X: Ensemble G) {H: Group G op}: Ensemble G :=
| generated_unit: In _ (generated G op X) e (* 単位元 single,inv,consから言えるのでなくてもよい *)
| generated_single: forall x, In _ X x -> In _ (generated G op X) x (* 生成元 *)
| generated_inv: forall x, In _ (generated G op X) x
    -> In _ (generated G op X) (inv x) (* 逆元 *)
| generated_cons: forall x, In _ (generated G op X) x
    -> forall y, In _ (generated G op X) y
    -> In _ (generated G op X) (op x y). (* 演算 *)

Check generated.
Check generated_ind.

Hint Constructors generated : core.

(* 教科書の定義により近づけた場合 *)
(* Xが空集合のケースを考えると _unit は必須のはず *)
Inductive generated' G op (X: Ensemble G) {H: Group G op}: Ensemble G :=
| generated'_unit: In _ (generated' G op X) e
| generated'_single: forall x, In _ X x -> In _ (generated' G op X) x
| generated'_inv: forall x, In _ X x -> In _ (generated' G op X) (inv x)
| generated'_append: forall x, In _ (generated' G op X) x
    -> forall y, In _ X y
    -> In _ (generated' G op X) (op x y)
| generated'_append_inv: forall x, In _ (generated' G op X) x
    -> forall y, In _ X y
    -> In _ (generated' G op X) (op x (inv y)).

Check generated'.
Check generated'_ind.

Hint Constructors generated' : core.


(* この補題は立てて大正解 ∀x,y∈<X>, xy^{-1}∈<X> *)
(* それまで滅茶苦茶迷走した *)
Lemma generated'_closed:
    forall G op X H x y, In _ (@generated' G op X H) x -> In _ (@generated' G op X H) y -> In _ (@generated' G op X H) (op x (inv y)).
Proof.
    intros. generalize dependent x. induction H1; auto; intros.
    - rewrite <- inv_unit, (proj1 (op_unit _)). auto.
    - rewrite <- inv_inv. apply generated'_append. auto. auto.
    - rewrite <- inv_op, <- op_assoc.
      pose (generated'_append_inv _ _ _ _ H2 _ H1) as Htemp.
      apply (IHgenerated' _ Htemp).
    - rewrite <- inv_op, <- inv_inv, <- op_assoc.
      pose (generated'_append _ _ _ _ H2 _ H1) as Htemp.
      apply (IHgenerated' _ Htemp).
Qed.

Lemma generated'_closed_inv:
    forall G op X H x, In _ (@generated' G op X H) x -> In _ (@generated' G op X H) (inv x).
Proof.
    intros.
    pose (generated'_unit G op X) as Hunit.
    pose (generated'_closed _ _ _ _ _ _ Hunit H0) as Hinv.
    rewrite (proj2 (op_unit _)) in Hinv.
    auto.
Qed.

Lemma generated'_closed_op:
    forall G op X H x y, In _ (@generated' G op X H) x -> In _ (@generated' G op X H) y -> In _ (@generated' G op X H) (op x y).
Proof.
    intros.
    pose (generated'_closed_inv _ _ _ _ _ H1) as Hinv.
    pose (generated'_closed _ _ _ _ _ _ H0 Hinv) as Htemp.
    rewrite <- inv_inv in Htemp.
    auto.
Qed.

(* 2つの定義は同値 *)
Lemma generated_generated' :
    forall G op X H x, (@generated G op X H) x -> (@generated' G op X H) x.
Proof.
    intros. induction H0.
    - apply generated'_unit.
    - apply generated'_single. auto.
    - apply generated'_closed_inv. auto.
    - apply generated'_closed_op. auto. auto.
Qed.

Lemma generated'_generated:
    forall G op X H x, (@generated' G op X H) x -> (@generated G op X H) x.
Proof.
    intros. induction H0.
    - apply generated_unit.
    - intros. apply generated_single. auto.
    - intros. apply generated_inv. auto.
    - intros. apply generated_cons. auto. auto.
    - intros. apply generated_cons. auto. apply generated_inv. auto.
Qed.

(* 命題2.3.13 (1) <X>はGの部分群である *)
Lemma generated_subgroup:
    forall G op X H, (@SubGroup G op (@generated G op X H) H).
Proof.
    intros. split; intros.
    - apply generated_cons; auto.
    - apply generated_unit.
    - apply generated_inv. auto.
Qed.

Lemma generated'_subgroup:
    forall G op X H, (@SubGroup G op (@generated' G op X H) H).
Proof.
    intros. split; intros.
    - apply generated'_closed_op. auto. auto.
    - apply generated'_unit.
    - apply generated'_closed_inv. auto.
Qed.

(* 命題2.3.13 (2) <X>はXを含む部分群のうち最小である(部分群HがXを含めば<X>⊂H)*)
Lemma generated_minimum:
    forall G op X HG H, (@SubGroup G op H HG)
    -> Included _ X H -> Included _ (@generated G op X HG) H.
Proof.
    unfold Included.
    intros.
    inversion H0.
    induction H2; auto.
Qed.

Definition CycleGroup G op x {H} := (@generated G op (Singleton _ x) H).
Hint Unfold CycleGroup: core.

(* 単位元によって生成される群は単位元からなる群である *)
(* 以下では集合として一致することだけ言っているが↑と合わせればOK *)
Lemma generated_by_unit:
    forall G op H, Same_set _ (@CycleGroup G op e H) (Singleton _ e).
Proof.
    intros. split; unfold Included; intros.
    induction H0; auto.
    - apply In_singleton.
    - inversion IHgenerated. rewrite <- inv_unit. apply In_singleton.
    - inversion IHgenerated. inversion IHgenerated0. rewrite (proj1 (op_unit _)). apply In_singleton.
    - inversion H0. apply generated_unit.
Qed.

(* 命題2.3.14は未 *)

(* 命題2.3.19 巡回群はアーベル群である *)
(* 巡回群(単一の生成元によって生成された部分群)の任意の2要素は可換である *)
Lemma cycle_group_arbel:
    forall G op H g x y,
    In _ (@CycleGroup G op g H) x
    -> In _ (@CycleGroup G op g H) y
    -> op x y = op y x.
Proof.
    intros. generalize dependent x. induction H1.
    - intros.
      rewrite (proj1 (op_unit _)), (proj2 (op_unit _)). 
      reflexivity.
    - intros. induction H1.
      + rewrite (proj1 (op_unit _)), (proj2 (op_unit _)).
        reflexivity.
      + inversion H0.
        inversion H1.
        rewrite <- H2, <- H3.
        reflexivity.
      + apply (f_equal (op (inv x0))) in IHgenerated.
        rewrite <- op_assoc in IHgenerated.
        rewrite (proj2 (op_inv _)) in IHgenerated.
        rewrite (proj2 (op_unit _)) in IHgenerated.
        apply (f_equal (fun x => (op x (inv x0)))) in IHgenerated.
        repeat rewrite op_assoc in IHgenerated.
        rewrite (proj1 (op_inv _)) in IHgenerated.
        rewrite (proj1 (op_unit _)) in IHgenerated.
        symmetry.
        auto.
      + rewrite op_assoc, IHgenerated0, <- op_assoc, <- op_assoc, IHgenerated.
        reflexivity.
    - intros.
      pose (IHgenerated _ H1) as Htemp.
      apply (f_equal (op (inv x))) in Htemp.
      repeat rewrite <- op_assoc in Htemp.
      rewrite (proj2 (op_inv _)) in Htemp.
      rewrite (proj2 (op_unit _)) in Htemp.
      apply (f_equal (fun y => (op y (inv x)))) in Htemp.
      rewrite op_assoc in Htemp.
      rewrite (proj1 (op_inv _)) in Htemp.
      rewrite (proj1 (op_unit _)) in Htemp.
      symmetry.
      auto.
    - intros.
      rewrite <- op_assoc.
      rewrite (IHgenerated _ H2).
      repeat rewrite op_assoc.
      rewrite (IHgenerated0 _ H2).
      reflexivity.
Qed.

(* 例 *)
Check (generated klein klein_op (Singleton _ k_I)).

(* 補題 生成元で生成される群は元の群に含まれる *)
Lemma generated_included:
    forall G op X H, Included _ (@generated G op X H) (Full_set G).
Proof.
    unfold Included, In. intros. induction H0; apply Full_intro.
Qed.
