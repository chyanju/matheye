import Mathlib
import Aesop

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

/-- Find $A$ and $B$ such that
\[\frac{4x}{x^2-8x+15} = \frac{A}{x-3} + \frac{B}{x-5}\]for all $x$ besides 3 and 5. Express your answer as an ordered pair in the form $(A, B).$ Show that it is (-6, 10).-/
theorem mathd_algebra_13 (a b : ℝ)
  (h₀ : ∀ x, x - 3 ≠ 0 ∧ x - 5 ≠ 0 → 4 * x / (x ^ 2 - 8 * x + 15) = a / (x - 3) + b / (x - 5)) :
  a = -6 ∧ b = 10 := by
  have h₁ : ∀ x, 4 * x = a * (x - 5) + b * (x - 3) := by
    intro x
    have h₁ := h₀ x
    have h₂ := h₀ (-1)
    have h₃ := h₀ 1
    norm_num [mul_comm] at h₁ h₂ h₃
    -- Use nlinarith to solve the system of equations derived from h₁, h₂, and h₃.
    nlinarith [sq_nonneg (x - 3), sq_nonneg (x - 5)]
  
  have h₂ : a = -6 := by
    have h₂ := h₁ 4
    have h₃ := h₁ 6
    have h₄ := h₁ 2
    have h₅ := h₁ 1
    have h₆ := h₁ 0
    have h₇ := h₁ (-1)
    have h₈ := h₁ (-2)
    have h₉ := h₁ (-3)
    have h₁₀ := h₁ (-4)
    have h₁₁ := h₁ (-5)
    have h₁₂ := h₁ (-6)
    have h₁₃ := h₁ (-7)
    have h₁₄ := h₁ (-8)
    have h₁₅ := h₁ (-9)
    have h₁₆ := h₁ (-10)
    norm_num at h₂ h₃ h₄ h₅ h₆ h₇ h₈ h₉ h₁₀ h₁₁ h₁₂ h₁₃ h₁₄ h₁₅ h₁₆
    <;> linarith
  
  have h₃ : b = 10 := by
    have h₃ := h₁ 4
    have h₄ := h₁ 6
    have h₅ := h₁ 2
    have h₆ := h₁ 0
    have h₇ := h₁ 1
    have h₈ := h₁ (-1)
    have h₉ := h₁ (-2)
    have h₁₀ := h₁ (-3)
    have h₁₁ := h₁ (-4)
    have h₁₂ := h₁ (-5)
    have h₁₃ := h₁ (-6)
    have h₁₄ := h₁ (-7)
    have h₁₅ := h₁ (-8)
    have h₁₆ := h₁ (-9)
    have h₁₇ := h₁ (-10)
    norm_num at h₃ h₄ h₅ h₆ h₇ h₈ h₉ h₁₀ h₁₁ h₁₂ h₁₃ h₁₄ h₁₅ h₁₆ h₁₇
    <;> linarith
  
  -- This step is to confirm that the given values of a and b satisfy the conditions.
  refine' ⟨_, _⟩ <;> linarith [h₁ 3, h₁ 5, h₁ 0, h₁ 1, h₁ (-1), h₁ (-2), h₁ (-3), h₁ (-4), h₁ (-5), h₁ (-6), h₁ (-7), h₁ (-8), h₁ (-9), h₁ (-10)]

