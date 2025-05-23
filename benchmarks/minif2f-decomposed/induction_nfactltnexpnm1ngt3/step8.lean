theorem h₃ (n : ℕ) (h₀ : 3 ≤ n) (h_base : 3! < 3 ^ (3 - 1)) (k : ℕ) (hk : 3 ≤ k) (hk_rec : k ! < k ^ (k - 1)) (h₁ : (k + 1)! = (k + 1) * k !) (h₂ : (k + 1) * k ! < (k + 1) * k ^ (k - 1)) : (k + 1) * k ^ (k - 1) ≤ (k + 1) ^ k :=
  by
  have h₄ : k ≥ 3 := by sorry
  have h₅ : k - 1 ≥ 2 := by sorry
  have h₆ : (k + 1) * k ^ (k - 1) ≤ (k + 1) ^ k := by sorry
  exact h₆