import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₄ (i m o : ℕ) (h₀ : i ≠ m ∧ m ≠ o ∧ o ≠ i) (h₁ : i * m * o = 2001) (h_pos_i : i > 0) (h_pos_m : m > 0) (h_pos_o : o > 0) (h₂ : i ∣ 2001) : m ∣ i * m * o :=
  by
  have h₅ : m ∣ i * m * o := by sorry
  --  exact h₅
  hole