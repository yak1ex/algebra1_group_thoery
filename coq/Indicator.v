From Stdlib Require Structures.Equalities.

Section Indicators.

  Locate HasEq.

  Variable T: HasEq.

  Variable U: Type.

  Definition Indicator := U -> bool.

  Definition In (A: Indicator) (x:U) : Prop := A x = true.

  Definition Included (B C: Indicator) : Prop := forall x:U, In B x -> In C x.

  Definition Empty_set : U -> bool := fun x => false.

  Definition Full_set: U -> bool := fun x => true.

  Definition Singleton (x:U) := 

End Indicators.
