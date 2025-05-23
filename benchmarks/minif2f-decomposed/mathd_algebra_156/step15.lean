theorem h₁₀ (x y : ℝ) (f g : ℝ → ℝ) (h₀ : ∀ (t : ℝ), f t = t ^ 4) (h₁ : ∀ (t : ℝ), g t = 5 * t ^ 2 - 6) (h₂ : f x = g x) (h₃ : f y = g y) (h₄ : x ^ 2 < y ^ 2) (h₅ : x ^ 4 - 5 * x ^ 2 + 6 = 0) (h₆ : y ^ 4 - 5 * y ^ 2 + 6 = 0) (h₇ : x ^ 2 = 2 ∨ x ^ 2 = 3) (h₈ : y ^ 2 = 2 ∨ y ^ 2 = 3) (h₉ : x ^ 2 = 2) : y ^ 2 = 3 := by
  cases h₈ with
  | inl h₈ =>
    have h₁₀ : y ^ 2 = 2 := h₈
    have h₁₁ : x ^ 2 < y ^ 2 := h₄
    rw [h₉, h₁₀] at h₁₁
    norm_num at h₁₁ <;> linarith
  | inr h₈ =>
    have h₁₀ : y ^ 2 = 3 := h₈
    exact h₁₀