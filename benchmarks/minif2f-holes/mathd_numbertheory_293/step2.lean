import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₂ (n : ℕ) (h₀ : n ≤ 9) (h₁ : 11 ∣ 20 * 100 + 10 * n + 7) : n = 5 := by
  have h₃ : n ≤ 9 := h₀
  have h₄ : 11 ∣ 20 * 100 + 10 * n + 7 := h₁
  --  --  interval_cases n <;> norm_num at h₄ ⊢ <;> (try omega) <;>
        (try {norm_num at h₄ <;> omega
          }) <;>
      (try {
          rcases h₄ with ⟨k, hk⟩
          omega
        }) <;>
    (try {omega
      })
  hole