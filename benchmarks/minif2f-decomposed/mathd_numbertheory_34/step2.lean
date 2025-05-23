theorem h₂ (x : ℕ) (h₀ : x < 100) (h₁ : x * 9 % 100 = 1) : x = 89 := by
  interval_cases x <;> norm_num at h₁ ⊢ <;> (try omega) <;> (try contradiction) <;> (try ring_nf at h₁ ⊢) <;>
              (try norm_num at h₁ ⊢) <;>
            (try omega) <;>
          (try {omega
            }) <;>
        (try {norm_num at h₁ ⊢ <;> omega
          }) <;>
      (try {ring_nf at h₁ ⊢ <;> norm_num at h₁ ⊢ <;> omega
        }) <;>
    (try {omega
      })