import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₁ (S : Finset ℕ) (h₀ : ∀ (n : ℕ), n ∈ S ↔ n + 2 ∣ 3 * (n + 3) * (n ^ 2 + 9)) : S = {1, 11, 37} := by
  --  apply Finset.ext
  --  intro n
  --  simp only [Finset.mem_insert, Finset.mem_singleton, h₀]
  --  constructor
  --  · intro h
    have h₂ : (n + 2) ∣ 3 * (n + 3) * (n ^ 2 + 9) := by sorry
    have h₃ : n = 1 ∨ n = 11 ∨ n = 37 := by sorry
  --    aesop
  --  · intro h
    have h₂ : n = 1 ∨ n = 11 ∨ n = 37 := by sorry
  --    rcases h₂ with (rfl | rfl | rfl)
  --    · norm_num
  --    · norm_num
  --    · norm_num
  hole