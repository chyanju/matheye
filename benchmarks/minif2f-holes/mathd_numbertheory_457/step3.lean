import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₃ (n : ℕ) (h₀ : 0 < n) (h₁ : 80325 ∣ n !) (h₂ : 17 ∣ 80325) : 17 ∣ n ! := by
  have h₄ : 17 ∣ 80325 := h₂
  have h₅ : 80325 ∣ n ! := h₁
  --  exact dvd_trans h₄ h₅
  hole