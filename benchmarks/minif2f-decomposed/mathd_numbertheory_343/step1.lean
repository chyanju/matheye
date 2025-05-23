theorem mathd_numbertheory_343  : (∏ k ∈ Finset.range 6, (2 * k + 1)) % 10 = 5 :=
  by
  have h₁ : (∏ k in Finset.range 6, (2 * k + 1)) = 1 * 3 * 5 * 7 * 9 * 11 := by sorry
  have h₂ : (∏ k in Finset.range 6, (2 * k + 1)) % 10 = 5 := by sorry
  apply h₂