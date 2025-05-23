import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₄ (n : ℕ) (h₀ : 10 ≤ n) (h₁ : ∃ x, x ^ 2 = n) (h₂ : ∃ t, t ^ 3 = n) (h₃ : ∀ (t : ℕ), t ^ 3 = n → 64 ≤ n) : 64 ≤ n := by
  --  rcases h₂ with ⟨t, ht⟩
  have h₅ : 64 ≤ n := h₃ t ht
  --  exact h₅
  hole