namespace main
  open classical
  variables A B C : Prop 

  #check A ∧ ¬ B → C
  #check (assume H : A, and.intro H H)
  #check (assume H : A ∧ ¬ B, and.intro (and.right H) (and.left H))
  #check (λ H : A ∧ ¬ B, and.intro (and.right H) (and.left H))

  example : A ∧ ¬ B → ¬ B ∧ A :=
    assume H : A ∧ ¬ B,
    and.intro (and.right H) (and.left H)

  -- implicit premise type
  example : A ∧ ¬ B → ¬ B ∧ A :=
    assume H,
    and.intro (and.right H) (and.left H)

  -- show.. from..
  example : A ∧ ¬ B → ¬ B ∧ A :=
    assume H : A ∧ ¬ B,
    show ¬ B ∧ A, from and.intro (and.right H) (and.left H)
  
  -- show .. from nested
  example : A ∧ ¬ B → ¬ B ∧ A :=
    assume H : A ∧ ¬ B,
    show ¬ B ∧ A, from and.intro
      (show ¬ B, from and.right H)
      (show A, from and.left H)

  -- moving premise into parameters
  example (A B : Prop) : A ∧ ¬ B → ¬ B ∧ A :=
    assume H : A ∧ ¬ B,
    show ¬ B ∧ A, from and.intro (and.right H) (and.left H)

  -- using sorry
  example : A ∧ ¬ B → ¬ B ∧ A :=
    assume H,
    sorry

  -- negation
  example : ¬ A :=
    assume H : A,
    show false, from sorry

  -- true is proved trivially
  example : true := trivial

  -- ex falso
  example : false → A := 
    assume H,
    show A, from false.elim H

  -- biconditional
  example : A ↔ B :=
    iff.intro
      (assume H : A,
       show B, from sorry)
      (assume H : B,
       show A, from sorry)

  -- by contradiction
  example : A :=
    by_contradiction
      (assume H : ¬ A,
      show false, from sorry)

  example (A B C : Prop) : (A → (B → C)) → (A ∧ B → C) :=
    assume H₁ : A → (B → C),
    assume H₂ : A ∧ B,
    show C, from H₁ (and.left H₂) (and.right H₂)

  example (A B C : Prop) : A ∧ (B ∨ C) → (A ∧ B) ∨ (A ∧ C) :=
    assume H₁ : A ∧ (B ∨ C),
        or.elim (and.right H₁)
          (assume H₂ : B,
           show (A ∧ B) ∨ (A ∧ C),
             from or.inl (and.intro (and.left H₁) H₂))
          (assume H₂ : C,
           show (A ∧ B) ∨ (A ∧ C),
             from or.inr (and.intro (and.left H₁) H₂))
end main 