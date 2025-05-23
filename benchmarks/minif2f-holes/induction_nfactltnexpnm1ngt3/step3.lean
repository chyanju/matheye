import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h_inductive (n : ℕ) (h₀ : 3 ≤ n) (h_base : 3! < 3 ^ (3 - 1)) : ∀ (k : ℕ), 3 ≤ k → k ! < k ^ (k - 1) → (k + 1)! < (k + 1) ^ k :=
  by
  --  intro k hk hk_rec
  have h₁ : (k + 1)! = (k + 1) * k ! := by sorry
  --  rw [h₁]
  have h₂ : (k + 1) * k ! < (k + 1) * k ^ (k - 1) := by sorry
  have h₃ : (k + 1) * k ^ (k - 1) ≤ (k + 1) ^ k := by sorry
  have h₄ : (k + 1) * k ! < (k + 1) ^ k := by sorry
  --  exact h₄
  hole