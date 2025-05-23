theorem h_card (S : Finset ℕ) (h₀ : ∀ (n : ℕ), n ∈ S ↔ 0 < n ∧ ((↑n : ℝ) + 1000) / 70 = (↑⌊√(↑n : ℝ)⌋ : ℝ)) (h_main : S = {400, 470, 2290, 2360, 2430, 2500}) : S.card = 6 := by
  rw [h_main]
  norm_num <;> rfl