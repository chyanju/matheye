import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₉₅ (a b : ℕ) (h₀ : 0 < a ∧ 0 < b) (h₁ : a % 10 = 2) (h₂ : b % 10 = 4) (h₃ : a.gcd b = 6) (h₄ : 12 ≤ a) (h₅ : 24 ≤ b) (h₆ : a ≠ 0) (h₇ : b ≠ 0) (h₈ : a * b = 6 * a.lcm b) (h₉₁ : a = 12) (h₉₂ : ¬54 ≤ b) (h₉₃ : b ≤ 53) : 6 ∣ a.gcd b := by -- simp [h₃]
  hole