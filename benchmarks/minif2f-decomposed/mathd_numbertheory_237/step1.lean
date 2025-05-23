theorem mathd_numbertheory_237  : (∑ k ∈ Finset.range 101, k) % 6 = 4 :=
  by
  have h : (∑ k in Finset.range 101, k) = 5050 := by sorry
  have h₁ : (∑ k in Finset.range 101, k) % 6 = 4 := by sorry
  apply h₁