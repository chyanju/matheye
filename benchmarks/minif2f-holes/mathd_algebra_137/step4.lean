import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₃ (x : ℕ) (h₀ : (↑x : ℝ) + 4 / 100 * (↑x : ℝ) = 598) (h₁ : 104 * (↑x : ℝ) = 59800) (h₂ : 104 * x = 59800) : x = 575 := by
  --  --  norm_num at h₂ ⊢ <;> (try omega) <;>
        (try {ring_nf at h₂ ⊢ <;> norm_num at h₂ ⊢ <;> omega
          }) <;>
      (try {ring_nf at h₂ ⊢ <;> norm_num at h₂ ⊢ <;> omega
        }) <;>
    (try {ring_nf at h₂ ⊢ <;> norm_num at h₂ ⊢ <;> omega
      })
  hole