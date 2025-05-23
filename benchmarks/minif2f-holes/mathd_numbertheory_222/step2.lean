import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₂ (b : ℕ) (h₀ : Nat.lcm 120 b = 3720) (h₁ : Nat.gcd 120 b = 8) : 120 * b = 29760 :=
  by
  have h₂₁ : Nat.gcd 120 b * Nat.lcm 120 b = 120 * b := by sorry
  --  --  --  rw [h₁, h₀] at h₂₁ <;> norm_num at h₂₁ ⊢ <;> linarith
  hole