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

(* 2.5 準同型と同型 *)

(* 定義2.5.1(1) *)
(* 準同型の定義 *)
Definition homomorphic {S1 S2 op1 op2} (f: S1 -> S2) {H1: Group S1 op1} {H2: Group S2 op2} :=
    forall x y, f (op1 x y) = op2 (f x) (f y).

(* Z での符号の反転は準同型である *)
Example hopp : homomorphic Z.opp.
Proof.
    unfold homomorphic. intros. ring.
    (* op1,2がZ.addで見えてるので整数が環であることを使って横着 *)
Qed.

(* 定義2.5.1(2) *)
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
Lemma bijective_homomorphic_isomorphic:
  forall G1 G2 (f:G1->G2) op1 op2 (H1:Group G1 op1) (H2:Group G2 op2),
  Bijective f -> @homomorphic G1 G2 op1 op2 f H1 H2 -> isomorphic f.
Proof.
    unfold Bijective,isomorphic,homomorphic.
    intros G1 G2 f op1 op2 H1 H2 Hb Hhom.
    split. exact Hhom.
    pose (bijective_injective _ _ _ Hb) as Hinj.
    destruct Hb as [g [Hgf Hfg]].
    unfold Injective in Hinj.
    exists g.
    split. intros.
    pose (Hhom (g x) (g y)) as Htemp.
    repeat rewrite Hfg in Htemp.
    rewrite <- (Hfg (op2 x y)) in Htemp.
    apply Hinj in Htemp.
    symmetry.
    exact Htemp.
    exact (conj Hfg Hgf).
Qed.

(* 命題2.5.3の逆 *)
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
    apply (op_closed _ _ H0 H3).
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
    apply inv_closed.
    exact H0.
    rewrite (homomorphic_inv _ _ _ _ _ _ _ _ H).
    rewrite <- H3.
    reflexivity.
Qed.

(* 命題2.5.13(1) *)
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

(* EnsembleFun は定義域、値域付きの関数(写像) *)

(* 定義2.5.1(1) 準同型の定義 *)
(* 定義域に関する条件を付けてる *)
(* F.(U) (op1 x y) は HS1 から従う *)
Definition homomorphicEF {S1 S2 op1 op2} (F: @EnsembleFun S1 S2)
    {H1: Group S1 op1} {H2: Group S2 op2}
    {HS1: @SubGroup S1 op1 F.(U) H1} {HS2: @SubGroup S2 op2 F.(V) H2} :=
    forall x y, F.(U) x -> F.(U) y ->
        appEF F (op1 x y) = op2 (appEF F x) (appEF F y).

Instance GroupSubGroup {S op} {H: Group S op} : SubGroup S op (Full_set S).
Proof. apply group_subgroup. Qed.

Lemma rewrite_SubGroup:
    forall {S op U V H}, (forall x, U x = V x) -> @SubGroup S op U H <-> @SubGroup S op V H.
Proof.
    intros; split; intros.
    - destruct H1. split; intros; rewrite <- H0.
      + apply op_closed; rewrite H0; auto.
      + auto.
      + apply inv_closed; rewrite H0; auto.
    - destruct H1. split; intros; rewrite H0.
      + apply op_closed; rewrite <- H0; auto.
      + auto.
      + apply inv_closed; rewrite <- H0; auto.
Qed.  

(* 定義2.5.1(2) 同型の定義 *)
(* 準同型fに対して、逆写像g(fg,gfが恒等写像)が存在し準同型でもある *)
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

(* Z での符号の反転は準同型である *)
Print asEF.
Example hEopp : homomorphicEF (asEF Z.opp).
Proof.
    unfold homomorphicEF. intros. simpl. ring.
    (* op1,2がZ.addで見えてるので整数が環であることを使って横着 *)
Qed.

(* 命題2.5.13(1) 準同型の合成は準同型である *)
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

(* 命題2.5.3の逆 同型は全単射 *)
Lemma isomorphicEF_BijectiveEF: forall S1 S2 op1 op2 F HG1 HG2 HS1 HS2,
    (@isomorphicEF S1 S2 op1 op2 F HG1 HG2 HS1 HS2) -> BijectiveEF F.
Proof.
    unfold isomorphicEF, homomorphicEF, BijectiveEF.
    intros S1 S2 op1 op2 F HG1 HG2 HS1 HS2 [Hhom [G [HS1'[HS2' [Hhom' [Hfg Hgf]]]]]].
    (* eauto. *)
    exists G.
    repeat split; auto.
Qed.

(* 命題2.5.3 全単射で準同型ならば同型 *)
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

(* 命題2.5.4 φ:G1→G2 が群の準同型のとき *)

(* 単純に @ つけずにやると phi: Z -> Z になる *)

(* (1) φ(1_{G_1})=1_{G_2} *)

Lemma homomorphicEF_unit :
    forall G1 G2 op1 op2 Phi HG1 HG2 HS1 HS2,
    @homomorphicEF G1 G2 op1 op2 Phi HG1 HG2 HS1 HS2 -> appEF Phi e = e.
Proof.
    intros. unfold homomorphicEF in H.
    destruct HS1.
    pose (H e e unit_closed unit_closed) as Htemp.
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

(* Not referenced *)
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
