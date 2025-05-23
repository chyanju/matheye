import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₂ (n : ℕ) (h₀ : 3 * n % 11 = 2) : 3 * (n % 11) % 11 = 2 := by
  have h₃ : 3 * n % 11 = 2 := h₀
  have h₄ : 3 * (n % 11) % 11 = 3 * n % 11 := by sorry
  --  rw [h₄, h₃]
  hole