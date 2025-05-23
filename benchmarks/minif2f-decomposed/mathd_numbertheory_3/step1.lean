theorem mathd_numbertheory_3  : (∑ x ∈ Finset.range 10, (x + 1) ^ 2) % 10 = 5 :=
  by
  have h_sum : (∑ x in Finset.range 10, (x + 1) ^ 2) % 10 = 5 := by sorry
  exact h_sum