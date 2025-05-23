theorem mathd_numbertheory_277 (m n : ℕ) (h₀ : m.gcd n = 6) (h₁ : m.lcm n = 126) : 60 ≤ m + n :=
  by
  have h₂ : m ≠ 0 := by sorry
  have h₃ : n ≠ 0 := by sorry
  have h₄ : m * n = 756 := by sorry
  have h₅ : 6 ∣ m := by sorry
  have h₆ : 6 ∣ n := by sorry
  have h₇ : m + n ≥ 60 := by sorry
  exact h₇ <;> (try omega) <;> (try norm_num) <;> (try linarith)