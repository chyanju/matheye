theorem mathd_algebra_170 (S : Finset ℤ) (h₀ : ∀ (n : ℤ), n ∈ S ↔ |n - 2| ≤ 5 + 6 / 10) : S.card = 11 :=
  by
  have h₁ : S = Finset.Icc (-3) 7 := by sorry
  have h₂ : S.card = 11 := by sorry
  apply h₂