import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₄₆ (n : ℕ) (h₀ : 0 < n) (h₁ : n.gcd 40 = 10) (h₂ : n.lcm 40 = 280) (h₃ h₄₁ : n * 40 = 2800) (h₄₃ : n ≤ 70) (h : ¬n ≥ 70) (h₄₅ : n ≤ 69) : n * 40 ≤ 69 * 40 := by -- nlinarith
  hole