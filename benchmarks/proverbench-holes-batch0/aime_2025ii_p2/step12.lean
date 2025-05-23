import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₁₀ (S : Finset ℕ) (h₀ : ∀ (n : ℕ), n ∈ S ↔ n + 2 ∣ 3 * (n + 3) * (n ^ 2 + 9)) (n : ℕ) (h h₂ h₄ h₅ h₆ : n + 2 ∣ 3 * (n + 3) * (n ^ 2 + 9)) (h₇ h₈ : n + 2 ∣ 39) (h₉ : n + 2 ≤ 39) : n ≤ 37 := by -- omega
  hole