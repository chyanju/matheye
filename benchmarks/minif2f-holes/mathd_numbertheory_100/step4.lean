import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₄ (n : ℕ) (h₀ : 0 < n) (h₁ : n.gcd 40 = 10) (h₂ : n.lcm 40 = 280) (h₃ : n * 40 = 2800) : n = 70 := by
  have h₄₁ : n * 40 = 2800 := h₃
  have h₄₂ : n = 70 := by sorry
  --  exact h₄₂
  hole