import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₅ (n : ℕ) (h₀ : 0 < n) (h₁ : 80325 ∣ n !) (h₂ : 17 ∣ 80325) (h₃ : 17 ∣ n !) (h₄ : n < 17 → False) : 17 ≤ n := by
  --  by_contra h₅
  have h₆ : n < 17 := by sorry
  have h₇ : False := h₄ h₆
  --  exact h₇
  hole