import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem mathd_numbertheory_320 (n : ℕ) (h₀ : n < 101) (h₁ : 101 ∣ 123456 - n) : n = 34 :=
  by
  have h₂ : 123456 % 101 = 34 := by sorry
  have h₃ : n % 101 = 34 := by sorry
  have h₄ : n = 34 := by sorry
  --  exact h₄
  hole