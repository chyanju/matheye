import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₅₄ (a b : ℕ) (h₀ : 0 < a ∧ 0 < b) (h₁ : a % 10 = 2) (h₂ : b % 10 = 4) (h₃ : a.gcd b = 6) (h₄ : 12 ≤ a) (h : ¬24 ≤ b) (h₅₁ : b ≤ 23) (h₅₂ : b % 10 = 4) : 6 ∣ a.gcd b := by -- simp [h₃]
  hole