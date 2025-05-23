import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₄ (a b c : ℕ) (h₀ : a ≤ 9 ∧ b ≤ 9 ∧ c ≤ 9) (h₁ : digits 10 (5 ^ 100 % 1000) = [c, b, a]) (h₂ : 5 ^ 100 % 1000 = 625) (h₃ : digits 10 (5 ^ 100 % 1000) = [5, 2, 6]) : [c, b, a] = [5, 2, 6] := by
  --  rw [h₃] at h₁
  --  rw [← h₁] <;> simp [h₂] <;> aesop
  hole