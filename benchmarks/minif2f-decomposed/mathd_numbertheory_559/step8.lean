theorem h₆ (x y : ℕ) (h₀ : x % 3 = 2) (h₁ : y % 5 = 4) (h₂ : x % 10 = y % 10) (h₄ : x % 10 % 5 = 4) : x % 10 = 4 ∨ x % 10 = 9 :=
  by
  have h₇ : x % 10 < 10 := Nat.mod_lt _ (by norm_num)
  interval_cases x % 10 <;> norm_num at h₄ ⊢ <;> omega