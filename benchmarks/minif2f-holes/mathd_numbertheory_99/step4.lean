import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₄ (n : ℕ) (h₀ h₃ : 2 * n % 47 = 15) : 2 * n % 47 = 2 * (n % 47) % 47 := by -- simp [Nat.mul_mod, Nat.add_mod, Nat.mod_mod]
  hole