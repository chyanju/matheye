import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₈ (a b c : ℕ) (h₀ : 0 < a ∧ 0 < b ∧ 0 < c) (h₁ : b = a + 1) (h₂ : c = b + 1) (h₃ : a * b * c = 8 * (a + b + c)) (h₄ : c = a + 2) (h₅ : a * (a + 1) * (a + 2) = 24 * (a + 1)) (h₆ : a = 4) (h₇ : b = 5) : c = 6 := by -- rw [h₄, h₆] <;> norm_num
  hole