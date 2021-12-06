Goal forall x y, ~(x /\ y) \/ (~x /\ y) \/ (~x /\ ~y) <-> ~(x /\ y).
Proof.
  split. intros H. destruct H.
  - exact H.
  - destruct H.
    -- unfold not. intros H_Not. apply H. destruct H_Not. exact H0.
    -- unfold not. intros H_Not. apply H. destruct H_Not. exact H1.
  - intros H. left. exact H.
Qed.

Goal forall x y z, ~(~x /\ y /\ ~z) /\ ~(x /\ y /\ z) /\ (x /\ ~y /\ ~z) <-> (x /\ ~y /\ ~z).
Proof.
  split. intros H. destruct H. destruct H0.
  - exact H1.
  - intros. split.
    -- destruct H. unfold not. intros H_Not. destruct H_Not. apply H1. exact H.
    -- destruct H. unfold not. split.
      --- intros. destruct H1. destruct H2. apply H0. exact H3.
      --- split.
        + exact H.
        + split. 
          ++ apply H0.
          ++ apply H0.
Qed.