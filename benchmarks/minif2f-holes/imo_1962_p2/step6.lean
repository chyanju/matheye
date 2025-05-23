import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₆₄ (x : ℝ) (h₀ : 0 ≤ 3 - x) (h₁ : 0 ≤ x + 1) (h₂ : 1 / 2 < √(3 - x) - √(x + 1)) (h₃ : -1 ≤ x) (h₄ : √(3 - x) - √(x + 1) > 1 / 2) (h₅ h₆₁ : √(3 - x) > √(x + 1) + 1 / 2) (h₆₂ : 0 ≤ √(x + 1)) (h₆₃ : 0 ≤ √(3 - x)) : 0 ≤ √(x + 1) * (1 / 2) := by -- positivity
  hole