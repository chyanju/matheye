theorem h₂ (a b c : ℕ) (h₀ : a ≤ 9 ∧ b ≤ 9 ∧ c ≤ 9) (h₁ : digits 10 (5 ^ 100 % 1000) = [c, b, a]) : 5 ^ 100 % 1000 = 625 := by
  norm_num [Nat.pow_mod, Nat.mod_mod, Nat.mod_eq_of_lt,
      Nat.lt_of_le_of_lt (Nat.zero_le _) (by norm_num : 1000 < 5 ^ 10)] <;>
    rfl