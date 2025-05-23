theorem h₈ (a : ℕ) (h₀ : Even a) (h₁ : (↑(∑ k ∈ Finset.range 8, 2 * k + 1) : ℤ) - (↑(∑ k ∈ Finset.range 5, a + 2 * sorry) : ℤ) = 4) (h₂ : ∑ k ∈ Finset.range 8, (2 * k + 1) = 64) (h₃ : ∑ k ∈ Finset.range 5, (a + 2 * k) = 5 * a + 20) (h₅ : ∑ k ∈ Finset.range 8, 2 * k + 1 = 64) (h₆ : ∑ k ∈ Finset.range 5, a + 2 * sorry = 5 * a + 20) (h₇ : 64 - (5 * (↑a : ℤ) + 20) = 4) : a = 8 :=
  by
  have h₈₁ : (a : ℤ) = 8 := by sorry
  have h₈₂ : a = 8 := by sorry
  exact h₈₂