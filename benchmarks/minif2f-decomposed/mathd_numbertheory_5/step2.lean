theorem h₃ (n : ℕ) (h₀ : 10 ≤ n) (h₁ : ∃ x, x ^ 2 = n) (h₂ : ∃ t, t ^ 3 = n) : ∀ (t : ℕ), t ^ 3 = n → 64 ≤ n := by
  intro t ht
  have h₄ : t ≥ 3 := by sorry
  by_cases h₅ : t ≥ 4
  ·
    have h₆ : t ^ 3 ≥ 4 ^ 3 := by sorry
    have h₇ : n ≥ 64 := by sorry
    linarith
  ·
    have h₆ : t = 3 := by sorry
    rw [h₆] at ht
    have h₇ : n = 27 := by sorry
    rcases h₁ with ⟨x, hx⟩
    have h₈ : x ^ 2 = 27 := by sorry
    have h₉ : x ≤ 5 := by sorry
    have h₁₀ : x ≥ 6 := by sorry
    linarith