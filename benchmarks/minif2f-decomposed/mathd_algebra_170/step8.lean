theorem h₂ (S : Finset ℤ) (h₀ : ∀ (n : ℤ), n ∈ S ↔ |n - 2| ≤ 5 + 6 / 10) (h₁ : S = Finset.Icc (-3) 7) : S.card = 11 := by
  rw [h₁]
  rfl