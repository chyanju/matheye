import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₇ (m n : ℕ) (h₀ : m.gcd n = 6) (h₁ : m.lcm n = 126) (h₂ : m ≠ 0) (h₃ : n ≠ 0) (h₄ : m * n = 756) (h₅ : 6 ∣ m) (h₆ : 6 ∣ n) : m + n ≥ 60 := by
  --  by_contra h
  have h₇₁ : m + n < 60 := by sorry
  have h₇₂ : m ≤ 59 := by sorry
  have h₇₃ : n ≤ 59 := by sorry
  have h₇₄ : m ≥ 6 := by sorry
  have h₇₅ : n ≥ 6 := by sorry
  have h₇₆ : m = 6 ∨ m = 12 ∨ m = 18 ∨ m = 24 ∨ m = 30 ∨ m = 36 ∨ m = 42 ∨ m = 48 ∨ m = 54 := by sorry
  have h₇₇ : n = 6 ∨ n = 12 ∨ n = 18 ∨ n = 24 ∨ n = 30 ∨ n = 36 ∨ n = 42 ∨ n = 48 ∨ n = 54 := by sorry
  --  rcases h₇₆ with (rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl) <;>
  --            rcases h₇₇ with (rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl) <;>
  --          norm_num at h₀ h₁ h₄ ⊢ <;>
  --        (try omega) <;>
      (try {simp_all [Nat.gcd_eq_right, Nat.gcd_eq_left, Nat.lcm, Nat.mul_div_cancel_left] <;> norm_num at * <;> omega
        }) <;>
    (try omega)
  hole