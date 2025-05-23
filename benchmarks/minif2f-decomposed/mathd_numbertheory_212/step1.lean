theorem mathd_numbertheory_212  : 16 ^ 17 * 17 ^ 18 * 18 ^ 19 % 10 = 8 :=
  by
  have h1 : 16 ^ 17 % 10 = 6 := by sorry
  have h2 : 17 ^ 18 % 10 = 9 := by sorry
  have h3 : 18 ^ 19 % 10 = 2 := by sorry
  have h4 : (16 ^ 17 * 17 ^ 18 * 18 ^ 19) % 10 = 8 := by sorry
  exact h4