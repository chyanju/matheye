import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₄ (x y : ℕ) (h₀ : x % 3 = 2) (h₁ : y % 5 = 4) (h₂ : x % 10 = y % 10) (h₃ : x % 10 = 4 ∨ x % 10 = 9) : 14 ≤ x := by
  have h₅ : x % 3 = 2 := h₀
  have h₆ : x % 10 = 4 ∨ x % 10 = 9 := h₃
  --  by_contra h₇
  have h₈ : x < 14 := by sorry
  --  --  interval_cases x <;> norm_num at h₅ h₆ h₈ ⊢ <;> (try omega) <;>
      (try
          {cases h₆ with
          | inl h₆ => omega
          | inr h₆ => omega
        }) <;>
    omega
  hole