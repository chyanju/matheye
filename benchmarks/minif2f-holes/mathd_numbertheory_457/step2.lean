import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₂ (n : ℕ) (h₀ : 0 < n) (h₁ : 80325 ∣ n !) : 17 ∣ 80325 := by -- norm_num <;> decide
  hole