import Mathlib
import Aesop

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

/-- Given the equations $3x+y=17,5y+z=14$ and $3x+5z=41$, what is the value of the sum $x+y+z$? Show that it is 12.-/
theorem mathd_algebra_427 (x y z : ℝ) (h₀ : 3 * x + y = 17) (h₁ : 5 * y + z = 14)
    (h₂ : 3 * x + 5 * z = 41) : x + y + z = 12 := by
  have h₃ : 6 * x + 6 * y + 6 * z = 72 := by
    have h₃₁ : 6 * x + 6 * y + 6 * z = (3 * x + y) + (5 * y + z) + (3 * x + 5 * z) := by
      ring
    rw [h₃₁]
    linarith
  
  have h₄ : x + y + z = 12 := by
    have h₄₁ : x + y + z = (6 * x + 6 * y + 6 * z) / 6 := by
      ring
    rw [h₄₁]
    rw [h₃]
    <;> norm_num
    <;> linarith
  
  exact h₄
