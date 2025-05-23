import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₃₅ (a : ℤ) (b : ℕ) (h₀ : Odd a) (h₁ : 4 ∣ b) (h₂ : a ^ 2 % 8 = 1) (h₃₁ : 4 ∣ b) (h₃₂ h₃₄ : 8 ∣ b ^ 2) : (↑(b ^ 2) : ℤ) % 8 = 0 :=
  by
  have h₃₆ : (b ^ 2 : ℕ) % 8 = 0 := by sorry
  have h₃₇ : ((b ^ 2 : ℕ) : ℤ) % 8 = 0 := by sorry
  --  exact h₃₇
  hole