import Mathlib
import Aesop

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

/-- The two-digit number $``B6,''$ where $B$ is the tens digit, is the square of a positive integer. How many distinct possible values are there for $B$? Show that it is 2.-/
theorem mathd_numbertheory_22 (b : ℕ) (h₀ : b < 10)
  (h₁ : Nat.sqrt (10 * b + 6) * Nat.sqrt (10 * b + 6) = 10 * b + 6) : b = 3 ∨ b = 1 := by
  -- We start by squaring both sides of the given equation to eliminate the square root.
  have h₂ := congr_arg (fun x => x ^ 2) h₁
  simp at h₂
  -- We now have the equation 10b + 6 = (2b + a)^2, where a is an integer between 0 and 9.
  -- We will check each possible value of a to find the valid values of b.
  interval_cases b <;> norm_num at h₂ ⊢ <;> try nlinarith
  -- After checking each value, we find that the only valid values for b are 1 and 3.
  <;> norm_num <;> nlinarith

