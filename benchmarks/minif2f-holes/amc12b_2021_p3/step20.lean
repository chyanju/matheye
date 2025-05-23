import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₅ (x : ℝ) (h₀ : 2 + 1 / (1 + 1 / (2 + 2 / (3 + x))) = 144 / 53) (h₁ : 3 + x ≠ 0) (h₂ : 8 + 2 * x ≠ 0) (h h₃ : 11 + 3 * x = 0) (h₄ : x = -11 / 3) : 2 + 2 / (3 + x) = -1 := by -- -- rw [h₄] <;> norm_num
  hole