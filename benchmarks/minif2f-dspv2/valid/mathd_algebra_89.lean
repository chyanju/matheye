import Mathlib
import Aesop

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

/-- Simplify $(7b^3)^2 \cdot (4b^2)^{-3},$ given that $b$ is non-zero. Show that it is \frac{49}{64}.-/
theorem mathd_algebra_89 (b : ℝ) (h₀ : b ≠ 0) :
  (7 * b ^ 3) ^ 2 * (4 * b ^ 2) ^ (-(3 : ℤ)) = 49 / 64 := by
  have step1 : (7 * b ^ 3) ^ 2 = 49 * b ^ 6 := by
    -- Simplify the expression using properties of exponents and multiplication.
    simp [pow_mul, mul_pow, h₀, mul_assoc, mul_comm, mul_left_comm]
    -- Normalize the expression to ensure it matches the right side of the equation.
    <;> ring
    <;> norm_num
    <;> linarith
  
  have step2 : (4 * b ^ 2) ^ (-3 : ℤ) = (1 / 64) * b ^ (-6 : ℤ) := by
    simp_all [zpow_neg, zpow_ofNat, mul_inv_rev, inv_inv]
    field_simp
    ring_nf
    <;> norm_num
    <;> linarith
  
  have step3 : 49 * b ^ 6 * ((1 / 64) * b ^ (-6 : ℤ)) = 49 / 64 := by
    field_simp [h₀, zpow_neg, zpow_ofNat, mul_comm, mul_assoc, mul_left_comm]
    <;> ring
    <;> norm_cast
    <;> simp_all [pow_mul]
    <;> norm_num
    <;> linarith
  
  -- Normalize the numbers to ensure they are in the correct form.
  norm_num at *
  -- Simplify all expressions using the given rules and properties.
  simp_all [h₀, zpow_neg, zpow_ofNat, mul_assoc]
  -- Use linear arithmetic to finalize the proof.
  <;> linarith

