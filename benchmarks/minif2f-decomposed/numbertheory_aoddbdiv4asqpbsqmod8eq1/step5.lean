theorem h₂₂ (a : ℤ) (b : ℕ) (h₁ : 4 ∣ b) (k : ℤ) (hk : a = 2 * k + 1) (this : a % 8 = (2 * k + 1) % 8) : (2 * k + 1) % 8 = 1 ∨ (2 * k + 1) % 8 = 3 ∨ (2 * k + 1) % 8 = 5 ∨ (2 * k + 1) % 8 = 7 :=
  by
  have this :
    (k : ℤ) % 8 = 0 ∨
      (k : ℤ) % 8 = 1 ∨
        (k : ℤ) % 8 = 2 ∨ (k : ℤ) % 8 = 3 ∨ (k : ℤ) % 8 = 4 ∨ (k : ℤ) % 8 = 5 ∨ (k : ℤ) % 8 = 6 ∨ (k : ℤ) % 8 = 7 := by sorry
  rcases this with (h | h | h | h | h | h | h | h) <;> (try omega) <;>
        (try {simp [h, Int.add_emod, Int.mul_emod, pow_two] <;> omega
          }) <;>
      (try {omega
        }) <;>
    (try {ring_nf at * <;> omega
      })