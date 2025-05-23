import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₂ (x : ℕ) (h₀ : (↑x : ℝ) + 4 / 100 * (↑x : ℝ) = 598) (h₁ : 104 * (↑x : ℝ) = 59800) : 104 * x = 59800 := by
  --  norm_cast at h₁ <;> (try norm_num at h₁ ⊢) <;> (try ring_nf at h₁ ⊢) <;> (try norm_num at h₁ ⊢) <;> (try omega) <;>
              (try {norm_num at h₁ ⊢ <;> ring_nf at h₁ ⊢ <;> norm_num at h₁ ⊢ <;> omega
                }) <;>
            (try {ring_nf at h₁ ⊢ <;> norm_num at h₁ ⊢ <;> omega
              }) <;>
          (try {norm_num at h₁ ⊢ <;> ring_nf at h₁ ⊢ <;> norm_num at h₁ ⊢ <;> omega
            }) <;>
        (try {ring_nf at h₁ ⊢ <;> norm_num at h₁ ⊢ <;> omega
          }) <;>
      (try {norm_num at h₁ ⊢ <;> ring_nf at h₁ ⊢ <;> norm_num at h₁ ⊢ <;> omega
        }) <;>
    (try {ring_nf at h₁ ⊢ <;> norm_num at h₁ ⊢ <;> omega
      })
  hole