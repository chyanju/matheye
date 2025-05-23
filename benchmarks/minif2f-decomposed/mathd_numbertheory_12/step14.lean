theorem h_card (h_main : {x ∈ Finset.Icc 15 85 | 20 ∣ x} = {20, 40, 60, 80}) : {x ∈ Finset.Icc 15 85 | 20 ∣ x}.card = 4 := by
  rw [h_main] <;> norm_num <;> decide