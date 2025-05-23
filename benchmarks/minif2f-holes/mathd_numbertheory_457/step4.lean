import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₄ (n : ℕ) (h₀ : 0 < n) (h₁ : 80325 ∣ n !) (h₂ : 17 ∣ 80325) (h₃ : 17 ∣ n !) : n < 17 → False := by
  --  intro h₅
  have h₆ : n < 17 := h₅
  have h₇ : ¬(17 ∣ n !) := by sorry
  have h₈ : 17 ∣ n ! := h₃
  --  exact h₇ h₈
  hole