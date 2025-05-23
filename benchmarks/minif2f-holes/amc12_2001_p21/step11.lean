import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h_c (a b c d : ℕ) (h₀ : a * b * c * d = 8!) (h₁ : a * b + a + b = 524) (h₂ : b * c + b + c = 146) (h₃ : c * d + c + d = 104) (h_fact : 8! = 40320) (h_ab : (a + 1) * (b + 1) = 525) (h_a : a = 24) (h_b : b = 20) : c = 6 := by
  have h₄ : b * c + b + c = 146 := h₂
  --  rw [h_b] at h₄
  --  ring_nf at h₄
  have h₅ : c ≤ 146 := by sorry
  --  --  interval_cases c <;> norm_num at h₄ ⊢ <;> (try omega)
  hole