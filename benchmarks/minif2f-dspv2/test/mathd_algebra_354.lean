import Mathlib
import Aesop

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

/-- In an arithmetic sequence, the 7th term is 30, and the 11th term is 60. What is the 21st term of this sequence? Show that it is 135.-/
theorem mathd_algebra_354 (a d : ℝ) (h₀ : a + 6 * d = 30) (h₁ : a + 10 * d = 60) :
    a + 20 * d = 135 := by
  have h₂ : 4 * d = 30 := by
    have h₂₁ : 4 * d = 30 := by
      -- Subtract the first equation from the second to eliminate `a` and solve for `d`.
      linarith
    exact h₂₁
  
  have h₃ : 14 * d = 105 := by
    have h₃₁ : 14 * d = (7 / 2 : ℝ) * (4 * d) := by
      ring
    have h₃₂ : (7 / 2 : ℝ) * (4 * d) = (7 / 2 : ℝ) * 30 := by
      rw [h₂]
      <;> ring
    have h₃₃ : (7 / 2 : ℝ) * 30 = 105 := by norm_num
    calc
      14 * d = (7 / 2 : ℝ) * (4 * d) := by rw [h₃₁]
      _ = (7 / 2 : ℝ) * 30 := by rw [h₃₂]
      _ = 105 := by rw [h₃₃]
  
  have h₄ : a + 20 * d = 135 := by
    have h₄₁ : a + 20 * d = (a + 6 * d) + 14 * d := by
      ring
    rw [h₄₁]
    -- Now we need to prove that (a + 6 * d) + 14 * d = 135
    have h₄₂ : a + 6 * d = 30 := h₀
    have h₄₃ : 14 * d = 105 := h₃
    -- Substitute the known values into the expression
    rw [h₄₂, h₄₃]
    -- Now we need to prove that 30 + 105 = 135
    <;> norm_num
  
  exact h₄
