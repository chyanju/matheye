import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₂ (n : ℕ) (hn : n > 0) (p : ℕ → ℕ) (h₀ : ∀ (x : ℕ), p x = x ^ 2 - x + 41) (h₁ : 1 < (p n).gcd (p (n + 1))) : p (n + 1) = p n + 2 * n := by
  --  simp only [h₀]
  have h₃ : (n + 1 : ℕ) ^ 2 - (n + 1) + 41 = (n ^ 2 - n + 41) + 2 * n := by sorry
  --  omega
  hole