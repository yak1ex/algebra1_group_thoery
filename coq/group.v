(* From Coq Require Export Bool.
From Coq Require Export Arith.Arith.
From Coq Require Export PeanoNat.
From Coq Require Export Arith.EqNat.
From Coq Require Export Lia. *)
From Coq Require Export ZArith.
From Coq Require Import Logic.FinFun.
From Coq Require Import Sets.Image.

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

Notation "x <*> y" := (op x y) (at level 50, left associativity).
Notation "! x" := (inv x) (at level 90, right associativity).

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

(* 逆元の存在を言えば唯一であることが言えるが
   取り扱いがちょっと面倒になるので逆元をとる操作自体を定義する *)
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

(* ref. https://www.tildedave.com/2019/07/18/formalizing-lagranges-theorem-in-coq.html *)

Notation "x <*> y" := (group_op x y) (at level 50, left associativity).
Notation "! x" := (inv x) (at level 90, right associativity).

Lemma group_cancel_l: forall a b c, a <*> b = a <*> c -> b = c.
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

Lemma group_cancel_r: forall a b c, a <*> b = c <*> b -> a = c.
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

Class SubGroup S op (X: Ensemble S) {H:Group S op} := {
  op_closed: forall x y, In _ X x -> In _ X y -> In _ X (op x y);
  unit_closed: In _ X e;
  inv_closed: forall x, In _ X x -> In _ X (inv x)
}.

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

End Trial2.

