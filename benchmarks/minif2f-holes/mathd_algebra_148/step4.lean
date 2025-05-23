import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₃ (c : ℝ) (f : ℝ → ℝ) (h₀ : ∀ (x : ℝ), f x = c * x ^ 3 - 9 * x + 3) (h₁ : f 2 = 9) (h₂ : c * 2 ^ 3 - 9 * 2 + 3 = 9) : c * 8 - 18 + 3 = 9 := by -- -- norm_num at h₂ ⊢ <;> linarith
  hole