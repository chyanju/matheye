import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₈ (a b : ℕ) (h₀ : 0 < a ∧ 0 < b) (h₁ : a % 10 = 2) (h₂ : b % 10 = 4) (h₃ : a.gcd b = 6) (h₄ : 12 ≤ a) (h₅ : 24 ≤ b) (h₆ : a ≠ 0) (h₇ : b ≠ 0) : a * b = 6 * a.lcm b := by
  have h₈₁ : Nat.gcd a b = 6 := h₃
  have h₈ : a * b = Nat.gcd a b * Nat.lcm a b := by sorry
  --  --  rw [h₈₁] at h₈ <;> linarith
  hole