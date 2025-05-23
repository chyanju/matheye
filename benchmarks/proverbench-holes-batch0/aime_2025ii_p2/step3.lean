import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₂ (S : Finset ℕ) (h₀ : ∀ (n : ℕ), n ∈ S ↔ n + 2 ∣ 3 * (n + 3) * (n ^ 2 + 9)) (n : ℕ) (h : n + 2 ∣ 3 * (n + 3) * (n ^ 2 + 9)) : n + 2 ∣ 3 * (n + 3) * (n ^ 2 + 9) := by -- simpa using h
  hole