import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₃₆ (a : ℤ) (b : ℕ) (h₀ : Odd a) (h₁ : 4 ∣ b) (h₂ : a ^ 2 % 8 = 1) (h₃₁ : 4 ∣ b) (k : ℕ) (hk h₃₅ : b = 4 * k) : 8 ∣ (4 * k) ^ 2 := by
  --  ring_nf at *
  --  --  use 2 * k ^ 2 <;> ring_nf at * <;> omega
  hole