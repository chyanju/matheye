import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₄ (x y : ℕ) (h₀ : x + y = 17402) (h₁ : 10 ∣ x) (h₂ : x / 10 = y) (h₃ : x = 10 * y) : y = 1582 :=
  by
  have h₄₁ : 11 * y = 17402 := by sorry
  have h₄₂ : y = 1582 := by sorry
  --  exact h₄₂
  hole