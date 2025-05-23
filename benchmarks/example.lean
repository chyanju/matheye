import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

example (x : ℝ) (h : x^2 ≤ 1) : x ≤ 1 := by
  -- ==== passed ====
  nlinarith
  -- ==== failed ====
  -- norm_num
  -- linarith
  -- omega
  -- ring
  -- ring_nf
  -- simp
  -- simpa
  -- field_simp

example (x y : ℕ) (h : x + 1 ≤ y ∧ y ≤ x + 1) : x = y - 1 := by
  -- ==== passed ====
  omega
  -- ==== failed ====
  -- norm_num
  -- linarith
  -- nlinarith
  -- ring
  -- ring_nf
  -- simp
  -- simpa
  -- field_simp

example (x : ℝ) (h : x^2 + 2*x + 1 = 0) : x = -1 := by
  -- ==== passed ====
  nlinarith
  -- ==== failed ====
  -- norm_num
  -- linarith
  -- omega
  -- ring
  -- ring_nf
  -- simp
  -- simpa
  -- field_simp

example (x : ℚ) : x / 3 + 1 / 6 = (2 * x + 1) / 6 := by
  -- field_simp
  -- field_simp
  -- ring_nf
  nlinarith

example (x : ℚ) (h : x ≠ 0) : (x^2 + x) / x = x + 1 := by
  field_simp [h]
