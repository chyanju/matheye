import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₉ (b : ℕ) (h₀ : Nat.lcm 120 b = 3720) (h₁ : Nat.gcd 120 b = 8) (h₂ h₅ : 120 * b = 29760) (h : ¬b ≤ 248) (h₈ : b ≥ 249) : 120 * b ≥ 120 * 249 := by -- exact Nat.mul_le_mul_left 120 h₈
  hole