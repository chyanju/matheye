import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₁ (h₀ : Real.log 27 = 3 * Real.log 3) : Real.log 27 / Real.log 3 = 3 := by
  --  rw [h₀]
  have h₂ : Real.log 3 ≠ 0 := by sorry
  --  field_simp [h₂] <;> ring <;> linarith [Real.log_pos (by norm_num : (1 : ℝ) < 3)]
  hole