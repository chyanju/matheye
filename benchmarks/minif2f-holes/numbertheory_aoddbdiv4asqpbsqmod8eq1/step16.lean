import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₄ (a : ℤ) (b : ℕ) (h₀ : Odd a) (h₁ : 4 ∣ b) (h₂ : a ^ 2 % 8 = 1) (h₃ : (↑(b ^ 2) : ℤ) % 8 = 0) : (a ^ 2 + (↑b : ℤ) ^ 2) % 8 = 1 :=
  by
  have h₄₁ : (a ^ 2 + (b ^ 2 : ℤ)) % 8 = ((a ^ 2 : ℤ) % 8 + ((b ^ 2 : ℕ) : ℤ) % 8) % 8 := by sorry
  --  rw [h₄₁]
  --  --  rw [h₂, h₃] <;> norm_num <;> ring_nf at * <;> omega
  hole