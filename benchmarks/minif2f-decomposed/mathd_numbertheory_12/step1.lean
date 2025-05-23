theorem mathd_numbertheory_12  : {x ∈ Finset.Icc 15 85 | 20 ∣ x}.card = 4 :=
  by
  have h_main : Finset.filter (fun x => 20 ∣ x) (Finset.Icc 15 85) = { 20, 40, 60, 80 } := by sorry
  have h_card : Finset.card (Finset.filter (fun x => 20 ∣ x) (Finset.Icc 15 85)) = 4 := by sorry
  apply h_card