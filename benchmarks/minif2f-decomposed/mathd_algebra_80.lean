import Mathlib
import Aesop

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

/-- Solve  \[\frac{x-9}{x+1}=2\]for $x$. Show that it is -11.-/
theorem mathd_algebra_80 (x : ℝ) (h₀ : x ≠ -1) (h₁ : (x - 9) / (x + 1) = 2) : x = -11 := by
  have h₂ : x + 1 ≠ 0 := by
    intro h
    apply h₀
    linarith
  
  have h₃ : x - 9 = 2 * (x + 1) := by
    have h₄ : (x - 9) / (x + 1) = 2 := h₁
    have h₅ : x + 1 ≠ 0 := h₂
    -- Eliminate the denominator by multiplying both sides by (x + 1)
    field_simp at h₄
    -- Simplify the equation to get x - 9 = 2 * (x + 1)
    linarith
  
  have h₄ : x = -11 := by
    have h₅ : x - 9 = 2 * (x + 1) := h₃
    have h₆ : x = -11 := by
      -- Solve the linear equation x - 9 = 2 * (x + 1)
      linarith
    exact h₆
  
  exact h₄
