import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h_d (a b c d : ℕ) (h₀ : a * b * c * d = 8!) (h₁ : a * b + a + b = 524) (h₂ : b * c + b + c = 146) (h₃ : c * d + c + d = 104) (h_fact : 8! = 40320) (h_ab : (a + 1) * (b + 1) = 525) (h_a : a = 24) (h_b : b = 20) (h_c : c = 6) : d = 14 := by
  have h₄ : c * d + c + d = 104 := h₃
  --  rw [h_c] at h₄
  --  ring_nf at h₄ ⊢
  --  omega
  hole