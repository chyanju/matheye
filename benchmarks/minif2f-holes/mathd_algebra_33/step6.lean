import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₃₅ (x y z : ℝ) (h₀ : x ≠ 0) (h₁ : 2 * x = 5 * y) (h₂ : 7 * y = 10 * z) (h₃₂ : 2 * x = 5 * y) (h₃₃ : 7 * (2 * x) = 7 * (5 * y)) (h₃₄ : 7 * (2 * x) = 14 * x) : 7 * (5 * y) = 35 * y := by -- ring
  hole