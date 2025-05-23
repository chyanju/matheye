import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₁₂ (b : ℕ) (h₀ : Nat.lcm 120 b = 3720) (h₁ : Nat.gcd 120 b = 8) (h₂ h₅ : 120 * b = 29760) (h : ¬b ≤ 248) (h₈ : b ≥ 249) (h₉ : 120 * b ≥ 120 * 249) (h₁₀ : 120 * 249 = 29880) (h₁₁ : 120 * b ≥ 29880) : 120 * b > 29760 := by -- omega
  hole