theorem h₂ (n : ℕ) (h₀ : n ≤ 9) (h₁ : 18 ∣ 374 * 10 + n) : n = 4 :=
  by
  have h₃ : n = 0 ∨ n = 1 ∨ n = 2 ∨ n = 3 ∨ n = 4 ∨ n = 5 ∨ n = 6 ∨ n = 7 ∨ n = 8 ∨ n = 9 := by sorry
  rcases h₃ with (rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl) <;> norm_num at h₁ ⊢ <;> (try omega) <;>
        (try {norm_num at h₁ <;> omega
          }) <;>
      (try {omega
        }) <;>
    (try {omega
      })