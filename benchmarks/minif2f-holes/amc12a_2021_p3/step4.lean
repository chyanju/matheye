import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₃₁₂ (x y : ℕ) (h₀ : x + y = 17402) (h₁ : 10 ∣ x) (h₂ : x / 10 = y) (h₃₁₁ : 10 ∣ x) : x = 10 * (x / 10) :=
  by
  have h₃₁₃ : x = 10 * (x / 10) := by sorry
  --  exact h₃₁₃
  hole