theorem h₇ (n : ℕ) (h₀ : 0 < n) (h₁ : 80325 ∣ n !) (h₂ : 17 ∣ 80325) (h₃ : 17 ∣ n !) (h₅ h₆ : n < 17) : ¬17 ∣ n ! := by
  interval_cases n <;>
      norm_num [Nat.factorial_succ, Nat.dvd_iff_mod_eq_zero, Nat.mul_mod, Nat.add_mod, Nat.mod_mod] at h₃ ⊢ <;>
    try contradiction <;> try norm_num at h₃ ⊢ <;> try contradiction <;> try omega