theorem h₅₄ (m n : ℕ) (h₀ : 1 < m) (h₁ : 1 < n) (h₂ : m * n = 2005) (h₃ : m ≤ 1002) (h₄ : n ≤ 1002) (h₅₁ h₅₃ : m ∣ 2005) : m = 1 ∨ m = 5 ∨ m = 401 ∨ m = 2005 :=
  by
  have h₅₅ : m ∣ 2005 := h₅₃
  have h₅₆ : m ≤ 2005 := Nat.le_of_dvd (by norm_num) h₅₅
  interval_cases m <;> norm_num at h₅₅ ⊢ <;> (try omega) <;> (try norm_num) <;> (try omega) <;>
    (try
        {(try omega) <;>
          (try {
              have h₅₇ : n ≤ 1002 := h₄
              have h₅₈ : m ≤ 1002 := h₃
              omega
            })
      })