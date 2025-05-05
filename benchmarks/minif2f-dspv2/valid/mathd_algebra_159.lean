import Mathlib
import Aesop

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

/-- Let $f(x)=3x^4-7x^3+2x^2-bx+1$. For what value of $b$ is $f(1)=1$? Show that it is -2.-/
theorem mathd_algebra_159 (b : ℝ) (f : ℝ → ℝ)
  (h₀ : ∀ x, f x = 3 * x ^ 4 - 7 * x ^ 3 + 2 * x ^ 2 - b * x + 1) (h₁ : f 1 = 1) : b = -2 := by
  simp_all only [rpow_two, mul_one, sub_eq_add_neg, add_assoc]
  ring_nf
  linarith

