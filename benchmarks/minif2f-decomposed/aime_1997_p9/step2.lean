theorem h₄ (a : ℝ) (h₀ : 0 < a) (h₁ : 1 / a - (↑⌊1 / a⌋ : ℝ) = a ^ 2 - (↑⌊a ^ 2⌋ : ℝ)) (h₂ : 2 < a ^ 2) (h₃ : a ^ 2 < 3) : ⌊a ^ 2⌋ = 2 := by
  rw [Int.floor_eq_iff]
  constructor <;> norm_num at h₂ h₃ ⊢ <;> (try norm_num) <;> (try nlinarith) <;> (try linarith) <;>
                    (try nlinarith [h₀, h₂, h₃]) <;>
                  (try norm_num at h₂ h₃ ⊢) <;>
                (try nlinarith) <;>
              (try linarith) <;>
            (try nlinarith [h₀, h₂, h₃]) <;>
          (try norm_num at h₂ h₃ ⊢) <;>
        (try nlinarith) <;>
      (try linarith) <;>
    (try nlinarith [h₀, h₂, h₃])