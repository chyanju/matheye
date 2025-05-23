import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₂₁ (a : ℤ) (b : ℕ) (h₀ : Odd a) (h₁ : 4 ∣ b) : a % 8 = 1 ∨ a % 8 = 3 ∨ a % 8 = 5 ∨ a % 8 = 7 :=
  by
  --  cases' h₀ with k hk
  have this : a % 8 = (2 * k + 1) % 8 := by sorry
  have h₂₂ : (2 * k + 1 : ℤ) % 8 = 1 ∨ (2 * k + 1 : ℤ) % 8 = 3 ∨ (2 * k + 1 : ℤ) % 8 = 5 ∨ (2 * k + 1 : ℤ) % 8 = 7 := by sorry
  --  --  rcases h₂₂ with (h₂₂ | h₂₂ | h₂₂ | h₂₂) <;> omega
  hole