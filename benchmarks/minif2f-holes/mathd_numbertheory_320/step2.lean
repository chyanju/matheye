import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₂ (n : ℕ) (h₀ : n < 101) (h₁ : 101 ∣ 123456 - n) : 123456 % 101 = 34 := by -- norm_num <;> rfl
  hole