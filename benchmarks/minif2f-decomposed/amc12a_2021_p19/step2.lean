theorem h₁ (S : Finset ℝ) (h₀ : ∀ (x : ℝ), x ∈ S ↔ 0 ≤ x ∧ x ≤ π ∧ sin (π / 2 * cos x) = cos (π / 2 * sin x)) : S = {0, π / 2} := by
  apply Finset.ext
  intro x
  simp only [Finset.mem_insert, Finset.mem_singleton, h₀]
  constructor
  · intro h
    have h₂ : 0 ≤ x := h.1
    have h₃ : x ≤ Real.pi := h.2.1
    have h₄ : Real.sin (Real.pi / 2 * Real.cos x) = Real.cos (Real.pi / 2 * Real.sin x) := h.2.2
    have h₅ : x = 0 ∨ x = Real.pi / 2 := by sorry
    cases h₅ with
    | inl h₅ => simp_all
    | inr h₅ => simp_all
  · intro h
    cases h with
    | inl h =>
      rw [h]
      constructor
      · linarith [Real.pi_pos]
      · constructor
        · linarith [Real.pi_pos]
        ·
          have h₂ : Real.sin (Real.pi / 2 * Real.cos 0) = Real.cos (Real.pi / 2 * Real.sin 0) := by
            norm_num [Real.cos_zero, Real.sin_zero]
          exact h₂
    | inr h =>
      rw [h]
      constructor
      · linarith [Real.pi_pos]
      · constructor
        · linarith [Real.pi_pos]
        ·
          have h₂ : Real.sin (Real.pi / 2 * Real.cos (Real.pi / 2)) = Real.cos (Real.pi / 2 * Real.sin (Real.pi / 2)) :=
            by
            have h₃ : Real.cos (Real.pi / 2) = 0 := by norm_num
            have h₄ : Real.sin (Real.pi / 2) = 1 := by norm_num
            rw [h₃, h₄] <;> norm_num [Real.sin_zero, Real.cos_zero]
          exact h₂