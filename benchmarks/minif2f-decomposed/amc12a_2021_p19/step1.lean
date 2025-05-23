theorem amc12a_2021_p19 (S : Finset ℝ) (h₀ : ∀ (x : ℝ), x ∈ S ↔ 0 ≤ x ∧ x ≤ π ∧ sin (π / 2 * cos x) = cos (π / 2 * sin x)) : S.card = 2 :=
  by
  have h₁ : S = {0, Real.pi / 2} := by sorry
  have h₂ : S.card = 2 := by sorry
  exact h₂