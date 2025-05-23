theorem mathd_numbertheory_353 (s : ℕ) (h₀ : s = ∑ k ∈ Finset.Icc 2010 4018, k) : s % 2009 = 0 :=
  by
  have h₁ : s = 2009 * 3014 := by sorry
  have h₂ : s % 2009 = 0 := by sorry
  exact h₂