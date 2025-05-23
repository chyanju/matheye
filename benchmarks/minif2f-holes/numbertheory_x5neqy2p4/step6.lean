import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₄ (x y : ℤ) (h₁ : x ^ 5 % 11 = 0 ∨ x ^ 5 % 11 = 1 ∨ x ^ 5 % 11 = 10) : y % 11 = 0 ∨
    y % 11 = 1 ∨
      y % 11 = 2 ∨
        y % 11 = 3 ∨ y % 11 = 4 ∨ y % 11 = 5 ∨ y % 11 = 6 ∨ y % 11 = 7 ∨ y % 11 = 8 ∨ y % 11 = 9 ∨ y % 11 = 10 :=
  --  by omega
  hole