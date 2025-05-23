import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h_main (n : ℕ) (h₀ : 3 ≤ n) (h_base : 3! < 3 ^ (3 - 1)) (h_inductive : ∀ (k : ℕ), 3 ≤ k → k ! < k ^ (k - 1) → (k + 1)! < (k + 1) ^ k) : n ! < n ^ (n - 1) :=
  by
  have h₁ : ∀ (k : ℕ), 3 ≤ k → k ! < k ^ (k - 1) := by sorry
  have h₂ : n ! < n ^ (n - 1) := h₁ n h₀
  --  exact h₂
  hole