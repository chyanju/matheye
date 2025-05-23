import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₇₃ (x y : ℝ) (f g : ℝ → ℝ) (h₀ : ∀ (t : ℝ), f t = t ^ 4) (h₁ : ∀ (t : ℝ), g t = 5 * t ^ 2 - 6) (h₂ : f x = g x) (h₃ : f y = g y) (h₄ : x ^ 2 < y ^ 2) (h₅ : x ^ 4 - 5 * x ^ 2 + 6 = 0) (h₆ : y ^ 4 - 5 * y ^ 2 + 6 = 0) (h₇₁ : x ^ 4 - 5 * x ^ 2 + 6 = 0) (h₇₂ : (x ^ 2 - 2) * (x ^ 2 - 3) = 0) : x ^ 2 - 2 = 0 ∨ x ^ 2 - 3 = 0 := by -- apply eq_zero_or_eq_zero_of_mul_eq_zero h₇₂
  hole