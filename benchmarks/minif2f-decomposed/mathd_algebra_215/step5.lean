theorem h₂ (S : Finset ℝ) (h₀ : ∀ (x : ℝ), x ∈ S ↔ (x + 3) ^ 2 = 121) (h₁ : S = {8, -14}) : ∑ k ∈ S, k = -6 := by
  rw [h₁]
  norm_num [Finset.sum_pair (show (8 : ℝ) ≠ -14 by norm_num)] <;> simp_all [Finset.sum_singleton] <;> norm_num <;>
    linarith