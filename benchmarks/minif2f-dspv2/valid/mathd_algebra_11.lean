import Mathlib
import Aesop

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

/-- What is the simplified numerical value of $\frac{a+11b}{a-b}$ if $\frac{4a+3b}{a-2b}=5$? Show that it is 2.-/
theorem mathd_algebra_11 (a b : ℝ) (h₀ : a ≠ b) (h₁ : a ≠ 2 * b)
    (h₂ : (4 * a + 3 * b) / (a - 2 * b) = 5) : (a + 11 * b) / (a - b) = 2 := by
  have h₃ : a - b ≠ 0 := by
    intro h
    apply h₀
    linarith
  have h₄ : a - 2 * b ≠ 0 := by
    intro h
    apply h₁
    linarith
  -- We need to show that (a + 11 * b) / (a - b) = 2
  field_simp [h₃, h₄, sub_ne_zero, mul_sub] at *
  -- Simplify the given equation (4 * a + 3 * b) / (a - 2 * b) = 5
  linarith

