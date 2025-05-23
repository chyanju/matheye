theorem h₃ (x : ℝ) (h₀ : x ≠ 0) (h₁ : 12 / (x * x) * (x ^ 4 / (14 * x)) * (35 / (3 * x)) = 12 * x ^ 4 * 35 / (x * x * (14 * x) * (3 * x))) (h₂ : x * x * (14 * x) * (3 * x) = 42 * x ^ 4) : 12 / (x * x) * (x ^ 4 / (14 * x)) * (35 / (3 * x)) = 12 * x ^ 4 * 35 / (42 * x ^ 4) :=
  by
  rw [h₁]
  rw [h₂] <;> field_simp [h₀] <;> ring_nf <;> field_simp [h₀] <;> ring_nf <;> field_simp [h₀] <;> linarith