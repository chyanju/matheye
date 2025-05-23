import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₁ (n : ℕ) : 4 ^ (n + 1) % 12 = 4 :=
  by
  have h₂ : ∀ n : ℕ, (4 ^ (n + 1)) % 12 = 4 := by sorry
  --  apply h₂
  hole