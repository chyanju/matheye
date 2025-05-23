import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₁₀ (x : ℤ) (h₀ : x < 0) (h₁ : 24 * x % 1199 = 15) (h : ¬x ≤ -449) (h₂ : x ≥ -448) (h₄ : 24 * x % 1199 = 15) (h₅ : 24 * x % 1199 = 24 * x % 1199) (h₆ h₉ : 24 * x % 1199 = 15) : x % 1199 = 750 := by -- omega
  hole