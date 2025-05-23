import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₂ (m n : ℕ) (h₀ : m.gcd n = 6) (h₁ : m.lcm n = 126) : m ≠ 0 := by
  --  by_contra h
  --  rw [h] at h₁ h₀
  --  simp [Nat.lcm] at h₁ h₀ <;> norm_num at h₁ h₀ ⊢ <;> aesop
  hole