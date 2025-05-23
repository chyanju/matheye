theorem h_main (k : ℕ) (h₀ : 0 < k) (h₁ : ∀ (n : ℕ), (6 * n + k).gcd (6 * n + 3) = 1) (h₂ : ∀ (n : ℕ), (6 * n + k).gcd (6 * n + 2) = 1) (h₃ : ∀ (n : ℕ), (6 * n + k).gcd (6 * n + 1) = 1) : 5 ≤ k := by
  by_contra h
  have h₄ : k ≤ 4 := by sorry
  interval_cases k <;> norm_num at h₁ h₂ h₃ ⊢ <;> (try omega) <;>
                        (try {
                            have h₅ := h₁ 1
                            have h₆ := h₂ 1
                            have h₇ := h₃ 1
                            norm_num at h₅ h₆ h₇ <;> omega
                          }) <;>
                      (try {
                          have h₅ := h₁ 0
                          have h₆ := h₂ 0
                          have h₇ := h₃ 0
                          norm_num at h₅ h₆ h₇ <;> omega
                        }) <;>
                    (try {
                        have h₅ := h₁ 2
                        have h₆ := h₂ 2
                        have h₇ := h₃ 2
                        norm_num at h₅ h₆ h₇ <;> omega
                      }) <;>
                  (try {
                      have h₅ := h₁ 3
                      have h₆ := h₂ 3
                      have h₇ := h₃ 3
                      norm_num at h₅ h₆ h₇ <;> omega
                    }) <;>
                (try {
                    have h₅ := h₁ 4
                    have h₆ := h₂ 4
                    have h₇ := h₃ 4
                    norm_num at h₅ h₆ h₇ <;> omega
                  }) <;>
              (try {
                  have h₅ := h₁ 5
                  have h₆ := h₂ 5
                  have h₇ := h₃ 5
                  norm_num at h₅ h₆ h₇ <;> omega
                }) <;>
            (try {
                have h₅ := h₁ 6
                have h₆ := h₂ 6
                have h₇ := h₃ 6
                norm_num at h₅ h₆ h₇ <;> omega
              }) <;>
          (try {
              have h₅ := h₁ 7
              have h₆ := h₂ 7
              have h₇ := h₃ 7
              norm_num at h₅ h₆ h₇ <;> omega
            }) <;>
        (try {
            have h₅ := h₁ 8
            have h₆ := h₂ 8
            have h₇ := h₃ 8
            norm_num at h₅ h₆ h₇ <;> omega
          }) <;>
      (try {
          have h₅ := h₁ 9
          have h₆ := h₂ 9
          have h₇ := h₃ 9
          norm_num at h₅ h₆ h₇ <;> omega
        }) <;>
    (try {
        have h₅ := h₁ 10
        have h₆ := h₂ 10
        have h₇ := h₃ 10
        norm_num at h₅ h₆ h₇ <;> omega
      })