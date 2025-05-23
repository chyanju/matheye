import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₂₁ (f : ℚ → ℝ) (h₀ : ∀ x > 0, ∀ y > 0, f (x * y) = f x + f y) (h₁ : ∀ (p : ℕ), Nat.Prime p → f (↑p : ℚ) = (↑p : ℝ)) : f (1 * 1) = f 1 + f 1 :=
  by
  have h₂₂ : f (1 * 1 : ℚ) = f 1 + f 1 := h₀ 1 (by norm_num) 1 (by norm_num)
  --  exact h₂₂
  hole