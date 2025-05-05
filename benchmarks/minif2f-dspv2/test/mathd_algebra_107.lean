import Mathlib
import Aesop

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

/-- Find the radius of the circle with equation $x^2 + 8x + y^2 - 6y = 0$. Show that it is 5.-/
theorem mathd_algebra_107 (x y : ℝ) (h₀ : x ^ 2 + 8 * x + y ^ 2 - 6 * y = 0) :
    (x + 4) ^ 2 + (y - 3) ^ 2 = 5 ^ 2 := by
  have h₁ : (x + 4) ^ 2 + (y - 3) ^ 2 = x ^ 2 + 8 * x + y ^ 2 - 6 * y + 25 := by
    ring_nf at h₀ ⊢
    <;>
    (try ring_nf) <;>
    (try linarith) <;>
    (try nlinarith) <;>
    (try nlinarith [sq_nonneg (x + 4), sq_nonneg (y - 3), sq_nonneg (x - 4), sq_nonneg (y + 3)]) <;>
    (try nlinarith [sq_nonneg (x + 4 + (y - 3)), sq_nonneg (x + 4 - (y - 3))])
    <;>
    nlinarith
  
  have h₂ : (x + 4) ^ 2 + (y - 3) ^ 2 = 25 := by
    rw [h₁]
    linarith
  
  have h₃ : (x + 4) ^ 2 + (y - 3) ^ 2 = 5 ^ 2 := by
    rw [h₂]
    <;> norm_num
  
  exact h₃
