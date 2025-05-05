import Mathlib
import Aesop

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

/-- Notice that  \[35\cdot40=1400.\]Find some integer $n$ with $0\leq n<1399$ such that $n$ is the multiplicative inverse to 160 modulo 1399. Show that it is 1058.-/
theorem mathd_numbertheory_321 (n : ZMod 1399) (h₁ : n = 160⁻¹) : n = 1058 := by
  have h₂ : (n : ZMod 1399) = 1058 := by
    rw [h₁]
    rw [show (160 : ZMod 1399)⁻¹ = 1058 by
      -- Verify that 160 * 1058 ≡ 1 mod 1399
      norm_num [ZMod.val_eq_zero, ZMod.val_one, ZMod.val_mul, ZMod.val_nat_cast,
        Nat.mod_eq_of_lt, Nat.div_eq_of_lt]
      <;> rfl
    ]
    <;> rfl
  
  have h₃ : n = 1058 := by
    have h₄ : (n : ZMod 1399) = (1058 : ZMod 1399) := by simpa using h₂
    have h₅ : n = 1058 := by
      exact_mod_cast h₄
    exact h₅
  
  apply h₃
