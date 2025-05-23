theorem h₁  : ∀ n ≥ 1, 6 ^ n % 10 = 6 := by
  intro n hn
  induction' hn with n hn IH
  · norm_num
  · omega