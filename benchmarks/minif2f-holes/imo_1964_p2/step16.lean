import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₉₁ (a b c : ℝ) (h₀ : 0 < a ∧ 0 < b ∧ 0 < c) (h₁ : c < a + b) (h₂ : b < a + c) (h₃ : a < b + c) (h₄ : 0 < b + c - a) (h₅ : 0 < c + a - b) (h₆ : 0 < a + b - c) (h₇ : 0 < (b + c - a) * (c + a - b) * (a + b - c)) (h₈ : (b + c - a) * (c + a - b) * (a + b - c) ≤ a * b * c) : a ^ 2 * (b + c - a) + b ^ 2 * (c + a - b) + c ^ 2 * (a + b - c) =
    (b + c - a) * (c + a - b) * (a + b - c) + 2 * a * b * c :=
  by
  --  ring_nf at * <;>
    nlinarith [h₀.1, h₀.2.1, h₀.2.2, h₁, h₂, h₃, h₄, h₅, h₆, h₇, h₈, mul_pos h₀.1 h₀.2.1, mul_pos h₀.2.1 h₀.2.2,
      mul_pos h₀.1 h₀.2.2]
  hole