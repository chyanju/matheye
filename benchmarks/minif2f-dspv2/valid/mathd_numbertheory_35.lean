import Mathlib
import Aesop

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

/-- What is the sum of the four positive factors of the positive integer value of $\sqrt{196}$? Show that it is 24.-/
theorem mathd_numbertheory_35 (S : Finset ℕ) (h₀ : ∀ n : ℕ, n ∣ Nat.sqrt 196) :
    (∑ k in S, k) = 24 := by
  -- We know that the divisors of the square root of 196 are 1, 2, 4, 7, 14, and 28.
  -- We need to sum these divisors and show that the sum equals 24.
  simpa [Nat.sqrt_eq_zero, Nat.div_eq_of_eq_mul_left] using h₀ 0
  <;> decide
  <;> simp_all [Finset.sum_eq_zero]
  <;> decide

