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

Module Trial2.

(* 教科書では逆元の存在だけ言って唯一であること(関数になること)を後から示しているが
   取り扱いがちょっと面倒になるので最初から逆元をとる操作として定義する *)
Class Group (S : Type) (op: S -> S -> S) :=
{
    inv: S -> S;
    e: S;
    op_unit: forall x, op x e = x /\ op e x = x;
    op_inv: forall x, op x (inv x) = e /\ op (inv x) x = e;
    op_assoc: forall x y z, op (op x y) z = op x (op y z)
}.

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

Notation "x <*> y" := (group_op x y) (at level 40, left associativity).
Notation "! x" := (inv x) (at level 35, right associativity).

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

(* 準同型の定義 *)
Definition homomorphic {S1 S2 op1 op2} (f: S1 -> S2) {H1: Group S1 op1} {H2: Group S2 op2} :=
    forall x y, f (op1 x y) = op2 (f x) (f y).

(* Z での符号の反転は準同型である *)
Example hopp : homomorphic Z.opp.
Proof.
    unfold homomorphic. intros. ring.
    (* op1,2がZ.addで見えてるので整数が環であることを使って横着 *)
Qed.

(* 準同型の合成は準同型である *)
Lemma homomorphic_compose:
    forall g f, homomorphic g -> homomorphic f
    -> homomorphic (fun x => g (f x)).
Proof.
    unfold homomorphic. intros.
    rewrite H0.
    rewrite H.
    reflexivity.
Qed.

(* 同型の定義 準同型fに対して、逆写像g(fg,gfが恒等写像)が存在し準同型でもある *)
Definition isomorphic {S1 S2 op1 op2} (f: S1 -> S2) {H1: Group S1 op1} {H2: Group S2 op2}:=
    homomorphic f /\ exists g, (homomorphic g /\ (forall x, f (g x) = x) /\ (forall x, g (f x) = x)).

(* Z での符号の反転は同型写像である *)
Example iopp: isomorphic Z.opp.
Proof.
    unfold isomorphic. split.
    apply hopp.
    exists Z.opp.
    split. apply hopp.
    split. apply Z.opp_involutive.
    apply Z.opp_involutive.
Qed.

(* 全単射：f が全単射なら fg gf が恒等写像になる写像 g が存在する *)
Print Bijective.
(*
Bijective =
fun (A B : Type) (f : A -> B) =>
exists g : B -> A, (forall x : A, g (f x) = x) /\ (forall y : B, f (g y) = y)
     : forall {A B : Type}, (A -> B) -> Prop
*)

(* 同型は全単射 *)
Lemma isomorphic_bijective: forall f, isomorphic f -> Bijective f.
Proof.
    unfold isomorphic, homomorphic, Bijective.
    intros f [Hhom [g [Hhom' [Hfg Hgf]]]].
    (* eauto. *)
    exists g.
    split.
    apply Hgf. apply Hfg.
Qed.

(* 全単射なら単射 *)
Lemma bijective_injective: forall A B, forall f: A -> B, Bijective f -> Injective f.
Proof.
    unfold Bijective, Injective.
    intros A B f [g [Hgf Hfg]] x y H.
    apply (f_equal g) in H.
    repeat rewrite Hgf in H.
    exact H.
Qed.

(* p.45 命題2.5.3 全単射で準同型ならば同型 *)
Lemma bijective_homomorphic_isomorphic: forall f, Bijective f -> homomorphic f -> isomorphic f.
Proof.
    unfold Bijective,isomorphic,homomorphic.
    intros f Hb Hhom.
    split. exact Hhom.
    pose (bijective_injective _ _ _ Hb) as Hinj.
    destruct Hb as [g [Hgf Hfg]].
    unfold Injective in Hinj.
    exists g.
    split. intros.
    pose (Hhom (g x) (g y)) as Htemp.
    repeat rewrite Hfg in Htemp.
    rewrite <- (Hfg (x + y)%Z) in Htemp.
    apply Hinj in Htemp.
    symmetry.
    exact Htemp.
    exact (conj Hfg Hgf).
Qed.

(* p.45 命題2.5.4 φ:G1→G2 が群の準同型のとき *)

(* 単純に @ つけずにやると phi: Z -> Z になる *)

(* (1) φ(1_{G_1})=1_{G_2} *)

Lemma homomorphic_unit :
    forall G1 G2 op1 op2 phi H1 H2,
    @homomorphic G1 G2 op1 op2 phi H1 H2-> phi e = e.
Proof.
    intros. unfold homomorphic in H.
    pose (H e e) as Htemp.
    rewrite (proj1 (op_unit e)) in Htemp. (* 単位元の性質を使う *)
    apply (f_equal (op2 (inv (phi e)))) in Htemp. (* 左からφ(1)^{-1}をかける *)
    rewrite <- op_assoc in Htemp. (* 結合則で順番を入れ替えて *)
    rewrite (proj2 (op_inv _)) in Htemp. (* 逆元の性質を使う *)
    rewrite (proj2 (op_unit _)) in Htemp.
    symmetry.
    exact Htemp.
Qed.

(* (2) x ∈ G_1 ⇒ φ(x^{-1})=φ(x)^{-1} *)

Lemma homomorphic_inv:
    forall G1 G2 op1 op2 phi H1 H2 x,
    @homomorphic G1 G2 op1 op2 phi H1 H2 -> phi (inv x) = inv (phi x).
Proof.
    intros.
    pose (homomorphic_unit G1 G2 op1 op2 phi H1 H2 H) as Hunit.
    unfold homomorphic in H.
    pose (H x (inv x)) as Htemp.
    rewrite (proj1 (op_inv _)) in Htemp.
    rewrite Hunit in Htemp.
    apply (f_equal (op2 (! phi x))) in Htemp.
    rewrite <- op_assoc in Htemp.
    rewrite (proj2 (op_inv _)) in Htemp.
    rewrite (proj1 (op_unit _)) in Htemp.
    rewrite (proj2 (op_unit _)) in Htemp.
    symmetry.
    exact Htemp.
Qed.

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

(* (3) H < G_2 ⇒ φ^{-1}(H) < G_1 *) (* < は部分群 *)

Inductive PreImage U V (Y:Ensemble V) (f: U -> V) : Ensemble U :=
  PreImage_intro: forall y:V, In _ Y y -> forall x:U, y = f x -> In _  (PreImage U V Y f) x.

Lemma homomorphic_preimage:
    forall G1 G2 op1 op2 phi H1 H2 X2,
    @homomorphic G1 G2 op1 op2 phi H1 H2 ->
    SubGroup G2 op2 X2 -> SubGroup G1 op1 (PreImage _ _ X2 phi).
Proof.
    intros. split.
    intros.
    destruct H3.
    destruct H4.
    apply (PreImage_intro _ _ _ _ (op2 y0 y)).
    apply (op_closed _ _ H3 H4).
    rewrite H, H5, H6.
    reflexivity.
    apply (PreImage_intro _ _ _ _ e).
    apply unit_closed.
    symmetry.
    apply homomorphic_unit.
    exact H.
    intros.
    destruct H3.
    apply (PreImage_intro _ _ _ _ (! y)).
    apply inv_closed.
    exact H3.
    symmetry.
    rewrite H4.
    apply homomorphic_inv.
    exact H.
Qed.

(* (4) Ker(φ) < G_1 ∧ Im(φ) < G_2 *)

Inductive Kernel U V (f: U -> V) {op2} {H: Group V op2}: Ensemble U :=
    Kernel_intro: forall x:U, e = f x -> In _ (Kernel U V f) x.

Lemma inv_unit: forall G op H, e = inv (@e G op H).
Proof.
    intros.
    destruct (op_inv e) as [H0 _].
    rewrite (proj2 (op_unit (! e))) in H0.
    symmetry.
    exact H0.
Qed.

Lemma homomorphic_kernel:
    forall G1 G2 op1 op2 phi H1 H2,
    @homomorphic G1 G2 op1 op2 phi H1 H2 ->
    SubGroup G1 op1 (Kernel _ _ phi).
Proof.
    intros. split.
    intros.
    apply (Kernel_intro _ _ _).
    destruct H0.
    destruct H3.
    rewrite H, <- H0, <- H3.
    symmetry.
    apply op_unit.
    apply (Kernel_intro _ _ _).
    symmetry.
    apply homomorphic_unit.
    exact H.
    intros.
    apply (Kernel_intro _ _ _).
    destruct H0.
    rewrite (homomorphic_inv _ _ _ _ _ _ _ _ H).
    rewrite <- H0.
    apply inv_unit.
Qed.

Lemma homomorphic_image:
    forall G1 G2 op1 op2 phi H1 H2,
    @homomorphic G1 G2 op1 op2 phi H1 H2 ->
    SubGroup G2 op2 (Im _ _ (Full_set G1) phi).
Proof.
    intros. split.
    intros.
    destruct H0.
    destruct H3.
    apply (Im_intro _ _ _ _ (op1 x x0)).
    destruct (group_subgroup G1 op1 H1).
    apply (op_closed0 _ _ H0 H3).
    rewrite H, <- H4, <- H5.
    reflexivity.
    apply (Im_intro _ _ _ _ e).
    apply Full_intro.
    symmetry.
    apply homomorphic_unit.
    exact H.
    intros.
    destruct H0.
    apply (Im_intro _ _ _ _ (! x)).
    destruct (group_subgroup G1 op1 H1).
    apply inv_closed0.
    exact H0.
    rewrite (homomorphic_inv _ _ _ _ _ _ _ _ H).
    rewrite <- H3.
    reflexivity.
Qed.

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

(* 命題2.5.14 G1 G2が群、phi1,phi2がG1→G2の準同型、G1が部分集合Xで生成されていて
   phi1(x)=phi2(x)がすべてのx∈Xに対して成り立てばphi1=phi2 *)
(* phi1 = phi2 とするためには Function Extensionality(関数外延性)が必要なので
   すべてのx∈G1についてphi1 x=phi2 xとしている *)
Lemma generator_defines_homomorphism:
    forall G1 G2 op1 op2 phi1 phi2 H1 H2 X,
    @homomorphic G1 G2 op1 op2 phi1 H1 H2 ->
    @homomorphic G1 G2 op1 op2 phi2 H1 H2 ->
    Same_set _ (@generated G1 op1 X H1) (Full_set G1) ->
    (forall x, In _ X x -> phi1 x = phi2 x) -> forall x, phi1 x = phi2 x.
Proof.
    intros. inversion H3. unfold Included in H6.
    pose (Full_intro G1) as Hfull.
    pose (H6 x (Hfull x)) as HInd.
    induction HInd.
    - rewrite (homomorphic_unit _ _ _ _ phi1 _ _ H).
      rewrite (homomorphic_unit _ _ _ _ phi2 _ _ H0).
      reflexivity.
    - apply H4. auto.
    - rewrite (homomorphic_inv _ _ _ _ phi1 _ _ _ H).
      rewrite (homomorphic_inv _ _ _ _ phi2 _ _ _ H0).
      f_equal. auto.
    - rewrite H, H0, IHHInd, IHHInd0. reflexivity.
Qed.

(* 命題2.5.15 phi:G1→G2が準同型なら phiが単射 と Ker(phi)=1_G は同値 *)
Lemma injective_trivial_kernel:
    forall G1 G2 op1 op2 phi H1 H2,
    @homomorphic G1 G2 op1 op2 phi H1 H2 ->
    Injective phi <-> Same_set _ (Kernel G1 G2 phi) (Singleton _ e).
Proof.
    unfold Injective, Same_set, Included. intros. split.
    - intros. split.
      + intros. inversion H3. pose (H0 e x) as Hinj.
        rewrite (homomorphic_unit _ _ _ _ phi _ _ H) in Hinj.
        rewrite <- (Hinj H4).
        apply In_singleton.
      + intros. inversion H3. apply Kernel_intro.
        rewrite (homomorphic_unit _ _ _ _ phi _ _ H). reflexivity.
    - intros [HL HR] x y Hphi.
      apply (f_equal (op2 (inv (phi x)))) in Hphi.
      rewrite (proj2 (op_inv _)) in Hphi.
      rewrite <- (homomorphic_inv _ _ _ _ phi _ _ x H) in Hphi.
      rewrite <- H in Hphi.
      pose (Kernel_intro _ _ _ _ Hphi) as HK.
      pose (HL _ HK) as HS.
      inversion HS.
      apply (f_equal (op1 x)) in H3.
      rewrite <- op_assoc in H3.
      rewrite (proj1 (op_unit _)) in H3.
      rewrite (proj1 (op_inv _)) in H3.
      rewrite (proj2 (op_unit _)) in H3.
      auto.
Qed.

(* Z以外の例 *)
Inductive klein :=
    k_I | k_X | k_Y | k_Z.

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

Definition klein_inv (k1: klein) := k1.

Lemma klein_double : forall k, klein_op k k = k_I.
    simple destruct k; [split; auto | auto | auto | auto].
Qed.

Instance KGroup : Group klein klein_op.
    split with klein_inv k_I.
    intros. split; destruct x; auto.
    intros. split; unfold klein_inv; apply klein_double.
    intros. destruct x; destruct y; destruct z; compute; reflexivity.
Qed.

Check (generated klein klein_op (Singleton _ k_I)).

(* 補題 生成元で生成される群は元の群に含まれる *)
Lemma generated_included:
    forall G op X H, Included _ (@generated G op X H) (Full_set G).
Proof.
    unfold Included, In. intros. induction H0; apply Full_intro.
Qed.

(* 命題2.4.5 Gが有限群ならGの任意の元の位数は有限である *)
(* 元によって生成される群の位数が有限である、で形式化 *)
(* 命題2.4.20を使っている *)
Lemma finite_group_finite_order:
    forall G op x (H: Group G op), Finite _ (Full_set G) -> In _ (Full_set G) x -> Finite _ (@generated G op (Singleton _ x) H).
Proof.
    intros.
    apply Finite_downward_closed with (Full_set G); auto.
    apply generated_included.
Qed.
Print Assumptions finite_group_finite_order.
(* classic Extensionality_Ensembles *)

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

Lemma homomorphic_gpower':
    forall {G op} {H:Group G op} g p q,
    gpower' g (p + q) = (gpower' g p) <*> (gpower' g q).
Proof.
    intros. generalize dependent p. induction q; intros.
    - rewrite Pos.xI_succ_xO at 1.
      rewrite Pos.add_succ_r, gpower'_succ, <- Pos.add_diag.
      rewrite Pos.add_assoc, IHq, IHq.
      simpl.
      now repeat rewrite <- op_assoc.
    - rewrite <- Pos.add_diag at 1.
      rewrite Pos.add_assoc, IHq, IHq.
      simpl.
      now rewrite <- op_assoc.
    - simpl.
      now rewrite Pos.add_1_r, gpower'_succ.
Qed.

Lemma gpower_pos_sub:
    forall {G op} {H:Group G op} g p q,
    g <^> Z.pos_sub p q = (gpower' g p) <*> (! gpower' g q).
Proof.
    intros.
    destruct (p ?= q)%positive eqn:E; rewrite Z.pos_sub_spec, E; simpl.
    - pose proof (proj1 (Pos.compare_eq_iff _ _) E) as Exy.
      subst.
      now rewrite (proj1 (op_inv _)).
    - pose proof (proj1 (Pos.compare_lt_iff _ _) E) as Exy.
      rewrite <- (Pos.sub_add _ _ Exy) at 2.
      rewrite homomorphic_gpower'.
      now rewrite <- inv_op, <- op_assoc, (proj1 (op_inv _)), (proj2 (op_unit _)).
    - pose proof (proj1 (Pos.compare_gt_iff _ _) E) as Exy.
      rewrite <- (Pos.sub_add _ _ Exy) at 2.
      rewrite homomorphic_gpower'.
      now rewrite op_assoc, (proj1 (op_inv _)), (proj1 (op_unit _)).
Qed.

Lemma gpower'_comm_inv:
    forall {G op} {H:Group G op} g p q,
    gpower' g p <*> ! gpower' g q = ! gpower' g q <*> gpower' g p.
Proof.
    intros.
    destruct (p ?= q)%positive eqn:E.
    - pose proof (proj1 (Pos.compare_eq_iff _ _) E) as Exy.
      subst.
      now rewrite (proj1 (op_inv _)), (proj2 (op_inv _)).
    - pose proof (proj1 (Pos.compare_lt_iff _ _) E) as Exy.
      rewrite <- (Pos.sub_add _ _ Exy).
      rewrite homomorphic_gpower'.
      rewrite gpower'_comm at 2.
      rewrite <- inv_op, <- op_assoc, (proj1 (op_inv _)), (proj2 (op_unit _)).
      now rewrite <- inv_op, op_assoc, (proj2 (op_inv _)), (proj1 (op_unit _)).
    - pose proof (proj1 (Pos.compare_gt_iff _ _) E) as Exy.
      rewrite <- (Pos.sub_add _ _ Exy).
      rewrite homomorphic_gpower'.
      rewrite gpower'_comm at 2.
      rewrite op_assoc, (proj1 (op_inv _)), (proj1 (op_unit _)).
      now rewrite <- op_assoc, (proj2 (op_inv _)), (proj2 (op_unit _)).
Qed.

(* g <^> (n + m) = (g <^> n) <*> (g <^> m) *)
(* 指数法則 これはつまり準同型 *)
Lemma homomorphic_gpower:
    forall {G op HG} g, @homomorphic Z G Z.add op (gpower g) ZPGroup HG.
Proof.
    unfold homomorphic. intros. induction x; induction y; simpl; try rewrite (proj1 (op_unit _ )); try rewrite (proj2 (op_unit _ )); auto.
    - apply homomorphic_gpower'.
    - apply gpower_pos_sub.
    - fold group_op. rewrite <- gpower'_comm_inv.
      apply gpower_pos_sub.
    - repeat rewrite gpower'_inv.
      apply homomorphic_gpower'.
Qed.

Lemma gpower_inv:
    forall {G op} {HG: Group G op} g n, g <^> (- n) = ! (g <^> n).
Proof.
    intros.
    pose proof (homomorphic_gpower g) as Hhom.
    unfold homomorphic in Hhom.
    pose proof (Hhom n (-n)%Z).
    apply group_cancel_l with (g <^> n).
    unfold group_op.
    rewrite <- H.
    rewrite Z.add_opp_diag_r.
    now rewrite (proj1 (op_inv _)).
Qed.

Lemma gpower'_unit: forall {G op} {HG:Group G op} p, e = gpower' e p.
Proof.
    intros. induction p; simpl; repeat rewrite <- IHp; repeat rewrite (proj1 (op_unit _)); auto.
Qed.

Lemma gpower'_mult:
    forall {G op} {HG:Group G op} g p q,
    gpower' g (p * q) = gpower' (gpower' g p) q.
Proof.
    intros. generalize dependent p; induction q; intros; simpl.
    - rewrite Pos.xI_succ_xO.
      rewrite Pos.mul_succ_r, <- Pos.add_diag, Pos.mul_add_distr_l.
      rewrite (Pos.add_comm p).
      repeat rewrite homomorphic_gpower'.
      now repeat rewrite IHq.
    - rewrite <- Pos.add_diag, Pos.mul_add_distr_l, homomorphic_gpower'.
      now rewrite IHq.
    - now rewrite Pos.mul_1_r.
Qed.

(* g <^> (n * m) = ((g <^> n) <^> m) *)
Lemma gpower_mult:
    forall {G op} {HG:Group G op} g n m, g <^> (n * m) = ((g <^> n) <^> m).
Proof.
    intros. generalize dependent n. induction m; intros; simpl; destruct n; simpl; auto.
    - apply gpower'_unit.
    - apply gpower'_mult.
    - rewrite <- gpower'_inv. f_equal. apply gpower'_mult.
    - rewrite gpower'_inv, <- inv_unit.
      apply gpower'_unit.
    - f_equal. apply gpower'_mult.
    - now rewrite <- gpower'_inv, <- inv_inv, gpower'_mult.
Qed.

Lemma gpower_order_plus:
    forall {G op} {HG:Group G op} g m n,
    g <^> m = e -> g <^> n = g <^> (n + m).
Proof.
    intros.
    now rewrite homomorphic_gpower, H, (proj1 (op_unit _)).
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

Check cardinal.

Definition element_order1 G op {H} g ord : Prop := cardinal G (@CycleGroup G op g H) ord.

Definition element_order2 G op {H:Group G op} g ord : Prop :=
    ord > 0 /\ g <^> Z.of_nat ord = e /\ forall n, n > 0 -> (g <^> Z.of_nat n) = e -> ~ n < ord.

Definition element_order3 G op {H:Group G op} g ord: Prop :=
    ord > 0 /\ (g <^> Z.of_nat ord) = e /\ forall n, 0 < n < ord -> (g <^> Z.of_nat n) <> e.

Definition NormalSubGroup G op {H} N: Prop :=
    (@SubGroup G op N H) /\ (forall g n, In _ N n -> In _ N (g <*> n <*> ! g)).

Inductive LeftCoset G op {H} g K (HK: @SubGroup G op K H) : G -> Prop :=
| LeftCoset_cons: forall k, In _ K k -> LeftCoset G op g K HK (g <*> k).

Inductive RightCoset G op {H} K g (HK: @SubGroup G op K H) : G -> Prop :=
| RightCoset_cons: forall k, In _ K k -> RightCoset G op K g HK (k <*> g).

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

(* 準同型の定義 *)
(* 定義域に関する条件が必要 *)
(* F.(U) (op1 x y) は HS1 から従う *)
Definition homomorphicEF {S1 S2 op1 op2} (F: @EnsembleFun S1 S2)
    {H1: Group S1 op1} {H2: Group S2 op2}
    {HS1: @SubGroup S1 op1 F.(U) H1} {HS2: @SubGroup S2 op2 F.(V) H2} :=
    forall x y, F.(U) x -> F.(U) y ->
        appEF F (op1 x y) = op2 (appEF F x) (appEF F y).

Instance GroupSubGroup {S op} {H: Group S op} : SubGroup S op (Full_set S).
Proof. apply group_subgroup. Qed.

(* Z での符号の反転は準同型である *)
Print asEF.
Example hEopp : homomorphicEF (asEF Z.opp).
Proof.
    unfold homomorphicEF. intros. simpl. ring.
    (* op1,2がZ.addで見えてるので整数が環であることを使って横着 *)
Qed.

(* 準同型の合成は準同型である *)
(* HS2 と HS2' が必要(Heqで結びついている) *)
Lemma homomorphicEF_compose:
    forall S1 S2 S3 op1 op2 op3 HG1 HG2 HG3 G F HS1 HS2 HS2' HS3 Heq,
    (@homomorphicEF S2 S3 op2 op3 G HG2 HG3 HS2 HS3) ->
    (@homomorphicEF S1 S2 op1 op2 F HG1 HG2 HS1 HS2') ->
    homomorphicEF (composeEF G F Heq).
Proof.
    intros. unfold homomorphicEF, appEF in *. simpl in *.
    destruct G as [fG UG VG HG].
    destruct F as [fF UF VF HF].
    intros.
    rewrite (H0 _ _); auto.
    rewrite (H _ _); auto;
    rewrite <- Heq; apply HF; auto.
Qed.

Lemma rewrite_SubGroup:
    forall {S op U V H}, (forall x, U x = V x) -> @SubGroup S op U H <-> @SubGroup S op V H.
Proof.
    intros; split; intros.
    - destruct H1. split; intros; rewrite <- H0.
      + apply op_closed0; rewrite H0; auto.
      + auto.
      + apply inv_closed0; rewrite H0; auto.
    - destruct H1. split; intros; rewrite H0.
      + apply op_closed0; rewrite <- H0; auto.
      + auto.
      + apply inv_closed0; rewrite <- H0; auto.
Qed.  

(* 同型の定義 準同型fに対して、逆写像g(fg,gfが恒等写像)が存在し準同型でもある *)
(* 定義域の条件に注意 *)
Definition isomorphicEF {S1 S2 op1 op2} (F: @EnsembleFun S1 S2)
    {H1: Group S1 op1} {H2: Group S2 op2}
    {HS1: @SubGroup S1 op1 F.(U) H1} {HS2: @SubGroup S2 op2 F.(V) H2} :=
    (@homomorphicEF S1 S2 op1 op2 F H1 H2 HS1 HS2) /\
        (exists G,
            (forall x, F.(U) x = G.(V) x) /\
            (forall x, F.(V) x = G.(U) x) /\
            (forall (Heq2:forall x, F.(V) x = G.(U) x) (Heq1:forall x, F.(U) x = G.(V) x),
                @homomorphicEF S2 S1 op2 op1 G H2 H1 (proj1 (rewrite_SubGroup Heq2) HS2) (proj1 (rewrite_SubGroup Heq1) HS1)) /\
            (forall x, G.(U) x -> appEF F (appEF G x) = x) /\
            (forall x, F.(U) x -> appEF G (appEF F x) = x)
        ).

Print isomorphicEF.

(* 同型は全単射 *)
Lemma isomorphicEF_BijectiveEF: forall S1 S2 op1 op2 F HG1 HG2 HS1 HS2,
    (@isomorphicEF S1 S2 op1 op2 F HG1 HG2 HS1 HS2) -> BijectiveEF F.
Proof.
    unfold isomorphicEF, homomorphicEF, BijectiveEF.
    intros S1 S2 op1 op2 F HG1 HG2 HS1 HS2 [Hhom [G [HS1'[HS2' [Hhom' [Hfg Hgf]]]]]].
    (* eauto. *)
    exists G.
    repeat split; auto.
Qed.

(* p.45 命題2.5.3 全単射で準同型ならば同型 *)
Lemma BijectiveEF_homomorphicEF_isomorphicEF:
    forall S1 S2 op1 op2 F HG1 HG2 HS1 HS2,
        BijectiveEF F -> @homomorphicEF S1 S2 op1 op2 F HG1 HG2 HS1 HS2 -> isomorphicEF F.
Proof.
    unfold BijectiveEF,isomorphicEF,homomorphicEF.
    intros S1 S2 op1 op2 F HG1 HG2 HS1 HS2 Hb Hhom.
    split. exact Hhom.
    pose (BijectiveEF_InjectiveEF _ _ _ Hb) as Hinj.
    destruct Hb as [G (H1UVx & H2UVx & Hgf & Hfg)].
    exists G.
    repeat split; intros; auto.
    destruct F as [fF UF VF HF].
    destruct G as [fG UG VG HG].
    simpl in *.
    assert (HUGx: UF (fG x)). {
        rewrite Heq1.
        apply HG; auto.
    }
    assert (HUGy: UF (fG y)). {
        rewrite Heq1.
        apply HG; auto.
    }
    pose (Hhom (fG x) (fG y) HUGx HUGy) as Htemp.
    (* repeat rewrite Hfg in Htemp. *)
    rewrite (Hfg x H) in Htemp.
    rewrite (Hfg y H0) in Htemp.
    rewrite <- Htemp.
    apply Hgf.
    apply HS1.(op_closed); auto.
Qed.

(* p.45 命題2.5.4 φ:G1→G2 が群の準同型のとき *)

(* 単純に @ つけずにやると phi: Z -> Z になる *)

(* (1) φ(1_{G_1})=1_{G_2} *)

Lemma homomorphicEF_unit :
    forall G1 G2 op1 op2 Phi HG1 HG2 HS1 HS2,
    @homomorphicEF G1 G2 op1 op2 Phi HG1 HG2 HS1 HS2 -> appEF Phi e = e.
Proof.
    intros. unfold homomorphicEF in H.
    destruct HS1.
    pose (H e e unit_closed0 unit_closed0) as Htemp.
    rewrite (proj1 (op_unit e)) in Htemp. (* 単位元の性質を使う *)
    apply (f_equal (op2 (inv (appEF Phi e)))) in Htemp. (* 左からφ(1)^{-1}をかける *)
    rewrite <- op_assoc in Htemp. (* 結合則で順番を入れ替えて *)
    rewrite (proj2 (op_inv _)) in Htemp. (* 逆元の性質を使う *)
    rewrite (proj2 (op_unit _)) in Htemp.
    symmetry.
    exact Htemp.
Qed.

(* (2) x ∈ G_1 ⇒ φ(x^{-1})=φ(x)^{-1} *)

Lemma homomorphicEF_inv:
    forall G1 G2 op1 op2 Phi H1 H2 HS1 HS2 x,
    @homomorphicEF G1 G2 op1 op2 Phi H1 H2 HS1 HS2 -> Phi.(U) x -> appEF Phi (inv x) = inv (appEF Phi x).
Proof.
    intros.
    pose (homomorphicEF_unit G1 G2 op1 op2 Phi H1 H2 HS1 HS2 H) as Hunit.
    unfold homomorphicEF in H.
    pose (H x (inv x)) as Htemp.
    rewrite (proj1 (op_inv _)) in Htemp.
    rewrite Hunit in Htemp.
    pose (HS1.(inv_closed) _ H0) as Hinv.
    apply (f_equal (op2 (! appEF Phi x))) in Htemp; auto.
    rewrite <- op_assoc in Htemp.
    rewrite (proj2 (op_inv _)) in Htemp.
    rewrite (proj1 (op_unit _)) in Htemp.
    rewrite (proj2 (op_unit _)) in Htemp.
    symmetry.
    exact Htemp.
Qed.

(* (3) H < G_2 ⇒ φ^{-1}(H) < G_1 *) (* < は部分群 *)
Inductive PreImageEF U V (Y:Ensemble V) (F: @EnsembleFun U V) : Ensemble U :=
  PreImageEF_intro: forall y:V, In _ Y y -> forall x:U, In _ F.(EnsembleFun.U) x -> y = f x -> In _  (PreImageEF U V Y F) x.

Lemma homomorphicEF_preimageEF:
    forall G1 G2 op1 op2 Phi H1 H2 HS1 HS2 X2,
    @homomorphicEF G1 G2 op1 op2 Phi H1 H2 HS1 HS2 ->
    @SubGroup G2 op2 X2 H2 -> @SubGroup G1 op1 (PreImageEF _ _ X2 Phi) H1.
Proof.
    intros. split; intros.
    - destruct H3 as [zx Hzx x HPIzx Heqzx].
      destruct H4 as [zy Hzy y HPIzy Heqzy].
      apply PreImageEF_intro with (op2 zx zy); auto.
      apply op_closed; auto.
      apply op_closed; auto.
      unfold homomorphicEF in H.
      destruct Phi as [fPhi UPhi VPhi HPhi]. simpl in H.
      set (Heq := H x y HPIzx HPIzy).
      rewrite Heqzx, Heqzy; auto.
    - apply PreImageEF_intro with e.
      + apply unit_closed.
      + apply unit_closed.
      + assert (Heq : appEF Phi e = e). {
          apply homomorphicEF_unit with HS1 HS2; auto.
        }
        auto.
    - destruct H3 as [zx Hzx x HPIzx Heqzx].
      apply PreImageEF_intro with (inv zx).
      + apply inv_closed; auto.
      + apply inv_closed; auto.
      + assert (Heq: appEF Phi (inv x) = (inv (appEF Phi x))). {
          apply homomorphicEF_inv with HS1 HS2; auto.
        }
        rewrite Heqzx. auto.
Qed.

(* (4) Ker(φ) < G_1 ∧ Im(φ) < G_2 *)

Inductive KernelEF U V (F: @EnsembleFun U V) {op2} {H: Group V op2}: Ensemble U :=
    KernelEF_intro: forall x:U, EnsembleFun.U x -> e = f x -> In _ (KernelEF U V F) x.

Lemma homomorphicEF_kernelEF:
    forall G1 G2 op1 op2 Phi H1 H2 HS1 HS2,
    @homomorphicEF G1 G2 op1 op2 Phi H1 H2 HS1 HS2 ->
    SubGroup G1 op1 (KernelEF _ _ Phi).
Proof.
    intros. split; intros.
    - destruct H0 as [zx Hzx Heqzx].
      destruct H3 as [zy Hzy Heqzy].
      apply KernelEF_intro.
      apply op_closed; auto.
      set (Heq := H zx zy Hzx Hzy).
      unfold appEF in Heq.
      rewrite Heq, <- Heqzx, <- Heqzy.
      rewrite (proj1 (op_unit e)); auto.
    - apply KernelEF_intro.
      apply unit_closed.
      assert (Heq: appEF Phi e = e). {
        apply homomorphicEF_unit with HS1 HS2; auto.
      }
      auto.
    - destruct H0 as [zx Hzx Heqzx].
      apply KernelEF_intro.
      apply inv_closed; auto.
      assert (Heq: appEF Phi (! zx) = ! appEF Phi zx). {
        apply homomorphicEF_inv with HS1 HS2; auto.
      }
      unfold appEF in Heq.
      rewrite Heq, <- Heqzx, <- inv_unit; auto.
Qed.

Lemma homomorphicEF_imageEF:
    forall G1 G2 op1 op2 Phi H1 H2 HS1 HS2,
    @homomorphicEF G1 G2 op1 op2 Phi H1 H2 HS1 HS2 ->
    SubGroup G2 op2 (ImEF Phi.(U) Phi).
Proof.
    intros. split; intros.
    - destruct H0 as [x HUx].
      destruct H3 as [y HUy].
      assert (Heq: appEF Phi (op1 x y) = op2 (appEF Phi x) (appEF Phi y)). {
        apply H; auto.
      }
      unfold appEF in Heq.
      rewrite H4, H5, <-Heq.
      apply ImEF_intro with (op1 x y); auto;
      apply op_closed; auto.
    - assert (Heq: appEF Phi e = e). {
        apply homomorphicEF_unit with HS1 HS2; auto.
      }
      rewrite <- Heq. unfold appEF.
      apply ImEF_intro with e; auto;
      apply unit_closed.
    - destruct H0 as [x HUx].
      assert (Heq: appEF Phi (! x) = ! appEF Phi x). {
        apply homomorphicEF_inv with HS1 HS2; auto.
      }
      unfold appEF in Heq.
      rewrite H3, <- Heq.
      apply ImEF_intro with (! x); auto;
      apply inv_closed; auto.
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

Lemma cardinal_lt_nat_ge_gpower:
    forall G op {H:Group G op} g n m,
    cardinal _ (Im _ _ (fun x => x < n) (fun x => g <^> (Z.of_nat x))) m
    -> ~ n < m.
Proof.
  intros.
  apply Nat.le_ngt.
  eapply cardinal_decreases.
  apply (lt_nat_cardinal n).
  apply H0.
Qed.
Print Assumptions cardinal_lt_nat_ge_gpower.
(* classic, Extensionality_Ensembles *)

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

Lemma element_order_3_2:
    forall G op {H} g ord, (@element_order3 G op H g ord) -> (@element_order2 G op H g ord).
Proof.
  unfold element_order3, element_order2, not; intros.
  destruct H0 as (HL & HC & HR).
  split; auto.
  split; auto.
  intros. apply HR with n; auto.
Qed.

Lemma element_order_2_3:
    forall G op {H} g ord, (@element_order2 G op H g ord) -> (@element_order3 G op H g ord).
Proof.
  unfold element_order2, element_order3, not; intros.
  destruct H0 as (HL & HC & HR).
  split; auto.
  split; auto.
  intros. destruct H0. apply HR with n; auto.
Qed.

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

(* TODO *)

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

Lemma element_order_divide_group_order :
    forall G op {H} K g n m,
    cardinal _ G n -> (@element_order1 G op H g m) -> Nat.divide m n.
Admitted.

End Trial2.
