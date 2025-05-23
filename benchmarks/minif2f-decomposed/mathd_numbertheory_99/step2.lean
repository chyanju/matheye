theorem h₁ (n : ℕ) (h₀ : 2 * n % 47 = 15) : n % 47 = 31 :=
  by
  have h₂ : (2 * (n % 47)) % 47 = 15 := by sorry
  have h₅ : n % 47 < 47 := Nat.mod_lt n (by norm_num)
  interval_cases n % 47 <;> norm_num at h₂ ⊢ <;> omega