import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₃ (n : ℕ) (hn : n > 0) (p : ℕ → ℕ) (h₀ : ∀ (x : ℕ), p x = x ^ 2 - x + 41) (h₁ : 1 < (p n).gcd (p (n + 1))) (h₂ : p (n + 1) = p n + 2 * n) : (p n).gcd (p (n + 1)) = (p n).gcd (2 * n) :=
  by
  --  rw [h₂]
  have h₄ : Nat.gcd (p n) (p n + 2 * n) = Nat.gcd (p n) (2 * n) := by sorry
  --  rw [h₄] <;> simp [h₀] <;> ring_nf <;> omega
  hole