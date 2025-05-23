theorem h₆ (S : Finset ℤ) (h₀ : ∀ (n : ℤ), n ∈ S ↔ |n - 2| ≤ 5 + 6 / 10) (n : ℤ) (h : |n - 2| ≤ 5 + 6 / 10) (h₂ h₄ : |n - 2| ≤ 5) (h₅ : 0 ≤ n - 2) : n - 2 ≤ 5 := by
  rw [abs_of_nonneg h₅] at h₄
  linarith