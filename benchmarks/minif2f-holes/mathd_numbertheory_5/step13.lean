import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₁₁ (n : ℕ) (h₀ : 10 ≤ n) (h₂ : ∃ t, t ^ 3 = n) (t : ℕ) (ht : 3 ^ 3 = n) (h₄ : t ≥ 3) (h₅ : ¬t ≥ 4) (h₆ : t = 3) (h₇ : n = 27) (x : ℕ) (hx : x ^ 2 = n) (h₈ : x ^ 2 = 27) (h₉ : x ≤ 5) (h : ¬x ≥ 6) : x ≤ 5 := by -- linarith
  hole