theorem amc12b_2020_p21 (S : Finset ℕ) (h₀ : ∀ (n : ℕ), n ∈ S ↔ 0 < n ∧ ((↑n : ℝ) + 1000) / 70 = (↑⌊√(↑n : ℝ)⌋ : ℝ)) : S.card = 6 :=
  by
  have h_main : S = { 400, 470, 2290, 2360, 2430, 2500 } := by sorry
  have h_card : S.card = 6 := by sorry
  exact h_card