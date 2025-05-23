import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₁₀ (x : ℤ) (h₀ : x < 0) (h₁ : 24 * x % 1199 = 15) (h : ¬x ≤ -449) (h₂ : x ≥ -448) (h₃ h₅ : x % 1199 = 750) (h₆ : x ≥ -448) (h₈ : ¬x ≥ 750) (h₉ : x < 750) : x ≤ -449 := by -- omega
  hole