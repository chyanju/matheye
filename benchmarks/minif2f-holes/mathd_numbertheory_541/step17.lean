import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₅₁ (m n : ℕ) (h₀ : 1 < m) (h₁ : 1 < n) (h₂ : m * n = 2005) (h₃ : m ≤ 1002) (h₄ : n ≤ 1002) : m ∣ 2005 := by -- -- use n <;> linarith
  hole