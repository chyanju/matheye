import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₁ (x : ℕ) (h₀ : (↑x : ℝ) + 4 / 100 * (↑x : ℝ) = 598) : 104 * (↑x : ℝ) = 59800 :=
  by
  have h₁ : (x : ℝ) + (4 : ℝ) / (100 : ℝ) * (x : ℝ) = 598 := h₀
  --  --  ring_nf at h₁ ⊢ <;> linarith
  hole