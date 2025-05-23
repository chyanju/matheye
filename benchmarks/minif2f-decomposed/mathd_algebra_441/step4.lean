theorem h₁₂ (x : ℝ) (h₀ : x ≠ 0) (h₁₁ : 12 / (x * x) * (x ^ 4 / (14 * x)) * (35 / (3 * x)) = 12 / (x * x) * (x ^ 4 / (14 * x) * (35 / (3 * x)))) : x ^ 4 / (14 * x) * (35 / (3 * x)) = x ^ 4 * 35 / (14 * x * (3 * x)) := by
  field_simp [h₀, pow_ne_zero, mul_comm, mul_assoc, mul_left_comm] <;> ring_nf <;> field_simp [h₀, pow_ne_zero] <;>
    ring_nf