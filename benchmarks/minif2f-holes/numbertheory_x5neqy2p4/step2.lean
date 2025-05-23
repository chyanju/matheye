import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h_main (x y : ℤ) : (x ^ 5 - (y ^ 2 + 4)) % 11 ≠ 0 :=
  by
  have h₁ : (x ^ 5 : ℤ) % 11 = 0 ∨ (x ^ 5 : ℤ) % 11 = 1 ∨ (x ^ 5 : ℤ) % 11 = 10 := by sorry
  have h₃ :
    (y ^ 2 + 4 : ℤ) % 11 = 2 ∨
      (y ^ 2 + 4 : ℤ) % 11 = 4 ∨
        (y ^ 2 + 4 : ℤ) % 11 = 5 ∨ (y ^ 2 + 4 : ℤ) % 11 = 7 ∨ (y ^ 2 + 4 : ℤ) % 11 = 8 ∨ (y ^ 2 + 4 : ℤ) % 11 = 9 := by sorry
  --  --  --  rcases h₁ with (h₁ | h₁ | h₁) <;> rcases h₃ with (h₃ | h₃ | h₃ | h₃ | h₃ | h₃) <;> (try omega) <;>
    (try {norm_num [Int.sub_emod, h₁, h₃, Int.emod_emod] at * <;> omega
      })
  hole