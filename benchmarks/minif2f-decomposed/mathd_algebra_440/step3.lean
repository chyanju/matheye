theorem h₂ (x : ℝ) (h₀ : 3 / 2 / 3 = x / 10) : x = 5 := by
  norm_num at h₀ ⊢ <;> (try ring_nf at h₀ ⊢) <;> (try linarith) <;> (try nlinarith) <;> (try field_simp at h₀ ⊢) <;>
          (try ring_nf at h₀ ⊢) <;>
        (try linarith) <;>
      (try nlinarith) <;>
    linarith