theorem h₂ (S : Finset ℝ) (h₀ : ∀ (x : ℝ), x ∈ S ↔ |2 - x| = 3) (h₁ : S = {-1, 5}) : ∑ k ∈ S, k = 4 := by
  rw [h₁]
  norm_num [Finset.sum_pair (show (-1 : ℝ) ≠ 5 by norm_num)] <;> simp_all [Finset.sum_singleton] <;> norm_num <;>
    linarith