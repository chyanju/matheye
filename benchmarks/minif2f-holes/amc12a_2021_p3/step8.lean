import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₄₁ (x y : ℕ) (h₀ : x + y = 17402) (h₁ : 10 ∣ x) (h₂ : x / 10 = y) (h₃ : x = 10 * y) : 11 * y = 17402 := by
  have h₄₂ : x = 10 * y := h₃
  --  rw [h₄₂] at h₀
  --  --  ring_nf at h₀ ⊢ <;> omega
  hole