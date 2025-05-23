theorem h₁ (S : Finset ℝ) (h₀ : ∀ (x : ℝ), x ∈ S ↔ (x + 3) ^ 2 = 121) : S = {8, -14} := by
  apply Finset.ext
  intro x
  simp only [Finset.mem_insert, Finset.mem_singleton, h₀]
  constructor
  · intro h
    have h₂ : (x + 3) ^ 2 = 121 := by sorry
    have h₃ : x + 3 = 11 ∨ x + 3 = -11 := by sorry
    cases h₃ with
    | inl h₃ =>
      have h₄ : x = 8 := by linarith
      rw [h₄]
      norm_num
    | inr h₃ =>
      have h₄ : x = -14 := by linarith
      rw [h₄]
      norm_num
  · intro h
    cases h with
    | inl h =>
      rw [h]
      norm_num
    | inr h =>
      rw [h]
      norm_num