theorem h_b (a b c d : ℕ) (h₀ : a * b * c * d = 8!) (h₁ : a * b + a + b = 524) (h₂ : b * c + b + c = 146) (h₃ : c * d + c + d = 104) (h_fact : 8! = 40320) (h_ab : (a + 1) * (b + 1) = 525) (h_a : a = 24) : b = 20 := by
  have h₄ : (a + 1) * (b + 1) = 525 := h_ab
  rw [h_a] at h₄
  norm_num at h₄ ⊢ <;> (try omega) <;> (try nlinarith) <;>
        (try {nlinarith
          }) <;>
      (try {ring_nf at h₁ h₂ h₃ ⊢ <;> nlinarith
        }) <;>
    (try {ring_nf at h₁ h₂ h₃ ⊢ <;> omega
      })