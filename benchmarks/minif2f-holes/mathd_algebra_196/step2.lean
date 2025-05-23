import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₁ (S : Finset ℝ) (h₀ : ∀ (x : ℝ), x ∈ S ↔ |2 - x| = 3) : S = {-1, 5} := by
  --  apply Finset.ext
  --  intro x
  --  simp only [Finset.mem_insert, Finset.mem_singleton, h₀]
  --  constructor
  --  · intro h
    have h₂ : abs (2 - x) = 3 := h
    have h₃ : 2 - x = 3 ∨ 2 - x = -3 := by sorry
  --    cases h₃ with
  --    | inl h₃ =>
  --      have h₄ : x = -1 := by linarith
  --      rw [h₄]
  --      norm_num
  --    | inr h₃ =>
  --      have h₄ : x = 5 := by linarith
  --      rw [h₄]
  --      norm_num
  --  · intro h
  --    cases h with
  --    | inl h =>
  --      rw [h]
  --      norm_num [abs_of_nonneg, abs_of_nonpos]
  --    | inr h =>
  --      rw [h]
  --      norm_num [abs_of_nonneg, abs_of_nonpos]
  hole