import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₉ (x : ℝ) (h₀ : 0 ≤ 3 - x) (h₁ : 0 ≤ x + 1) (h₂ : 1 / 2 < √(3 - x) - √(x + 1)) (h₃ : -1 ≤ x) (h₄ : √(3 - x) - √(x + 1) > 1 / 2) (h₅ : √(3 - x) > √(x + 1) + 1 / 2) (h₆ : 3 - x > x + 1 + √(x + 1) + 1 / 4) (h₇ : 7 - 8 * x > 4 * √(x + 1)) (h₈ : x < 7 / 8) : 0 ≤ √31 := by -- positivity
  hole