import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₂ (a : ℤ) (b : ℕ) (h₀ : Odd a) (h₁ : 4 ∣ b) : a ^ 2 % 8 = 1 :=
  by
  have h₂₁ : a % 8 = 1 ∨ a % 8 = 3 ∨ a % 8 = 5 ∨ a % 8 = 7 := by sorry
  --  --  rcases h₂₁ with (h₂₁ | h₂₁ | h₂₁ | h₂₁) <;> (try simp [h₂₁, pow_two, Int.mul_emod, Int.add_emod]) <;>
      (try norm_num) <;>
    (try ring_nf at * <;> omega)
  hole