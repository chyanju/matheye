import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₄₄ (n : ℕ) (h₀ : 0 < n) (h₁ : n.gcd 40 = 10) (h₂ : n.lcm 40 = 280) (h₃ h₄₁ : n * 40 = 2800) (h₄₃ : n ≤ 70) : n ≥ 70 := by
  --  by_contra h
  have h₄₅ : n ≤ 69 := by sorry
  have h₄₆ : n * 40 ≤ 69 * 40 := by sorry
  have h₄₇ : n * 40 < 2800 := by sorry
  --  omega
  hole