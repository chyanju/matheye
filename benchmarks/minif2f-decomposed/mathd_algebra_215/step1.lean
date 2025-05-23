theorem mathd_algebra_215 (S : Finset ℝ) (h₀ : ∀ (x : ℝ), x ∈ S ↔ (x + 3) ^ 2 = 121) : ∑ k ∈ S, k = -6 :=
  by
  have h₁ : S = ({8, -14} : Finset ℝ) := by sorry
  have h₂ : (∑ k in S, k) = -6 := by sorry
  apply h₂