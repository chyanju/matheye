theorem h₃ (S : Finset ℤ) (h₀ : ∀ (n : ℤ), n ∈ S ↔ |n - 2| ≤ 5 + 6 / 10) (n : ℤ) (h : |n - 2| ≤ 5 + 6 / 10) (h₂ : |n - 2| ≤ 5) : -3 ≤ n := by
  have h₄ : abs (n - 2) ≤ 5 := h₂
  cases' le_or_lt 0 (n - 2) with h₅ h₅
  ·
    have h₆ : n - 2 ≤ 5 := by sorry
    omega
  ·
    have h₆ : -(n - 2) ≤ 5 := by sorry
    omega