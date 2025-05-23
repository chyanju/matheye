import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₄ (x y : ℤ) (h₀ : y ^ 2 + 3 * (0 ^ 2 * y ^ 2) = 30 * 0 ^ 2 + 517) (h h₂ : x = 0) (h₃ : y ^ 2 = 517) : y ^ 2 = 517 := by -- simpa using h₃
  hole