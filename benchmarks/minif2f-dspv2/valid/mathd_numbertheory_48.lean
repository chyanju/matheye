import Mathlib
import Aesop

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

/-- If $321_{b}$ is equal to the base 10 integer 57, find $b$ given that $b>0$. Show that it is 4.-/
theorem mathd_numbertheory_48 (b : ℕ) (h₀ : 0 < b) (h₁ : 3 * b ^ 2 + 2 * b + 1 = 57) : b = 4 := by
  have h₂ : b = 4 := by
    nlinarith [sq_nonneg (b : ℤ), h₀, h₁]
  simp_all

