theorem h₆₅ (m n : ℕ) (h₀ : 0 < m ∧ 0 < n) (h₁ : m.gcd n = 8) (h₂ : m.lcm n = 112) (h₃ : m * n = 896) (h₄ : m ∣ 112) (h₅ : 8 ∣ m) (h₆₁ : m ∣ 112) (h₆₂ : 8 ∣ m) (h₆₃ : m > 0) (h₆₄ : m ≤ 112) : m = 8 ∨ m = 16 ∨ m = 56 ∨ m = 112 := by
  interval_cases m <;> norm_num at h₆₁ h₆₂ h₆₃ ⊢ <;> (try omega) <;> (try norm_num) <;> (try omega) <;>
    (try {
        exfalso
        have h₆₆ : n ≤ 896 := by nlinarith
        interval_cases n <;> norm_num at h₃ h₁ h₂ h₆₁ h₆₂ h₆₃ ⊢ <;> (try omega) <;> (try norm_num) <;> (try omega) <;>
          (try {
              exfalso
              omega
            })
      })