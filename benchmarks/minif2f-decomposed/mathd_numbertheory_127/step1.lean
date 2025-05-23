theorem mathd_numbertheory_127  : (∑ k ∈ Finset.range 101, 2 ^ k) % 7 = 3 :=
  by
  have h_sum_mod : (∑ k in Finset.range 101, 2 ^ k) % 7 = 3 := by sorry
  exact h_sum_mod