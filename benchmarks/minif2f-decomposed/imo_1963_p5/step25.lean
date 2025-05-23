theorem h2 (h1 : 2 * sin (π / 7) * (cos (π / 7) - cos (2 * π / 7) + cos (3 * π / 7)) = sin (π / 7)) : sin (π / 7) > 0 := by
  apply Real.sin_pos_of_pos_of_lt_pi
  · linarith [Real.pi_pos, Real.pi_gt_three]
  · linarith [Real.pi_pos, Real.pi_gt_three]