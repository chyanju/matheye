theorem h₇ (S : Finset ℤ) (h₀ : ∀ (n : ℤ), n ∈ S ↔ |n - 2| ≤ 5 + 6 / 10) (n : ℤ) (h : |n - 2| ≤ 5 + 6 / 10) (h₂ : |n - 2| ≤ 5) (h₃ : -3 ≤ n) (h₅ : |n - 2| ≤ 5) (h₆ : 0 ≤ n - 2) : n - 2 ≤ 5 := by
  rw [abs_of_nonneg h₆] at h₅
  linarith