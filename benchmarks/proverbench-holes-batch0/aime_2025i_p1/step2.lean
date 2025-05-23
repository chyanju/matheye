import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₁ (S : Finset ℕ) (h₀ : ∀ (b : ℕ), b ∈ S ↔ b > 9 ∧ b + 7 ∣ 9 * b + 7) : S = {21, 49} := by
  --  apply Finset.ext
  --  intro b
  --  simp only [Finset.mem_insert, Finset.mem_singleton, h₀]
  --  constructor
  --  · intro h
    have h₂ : b > 9 := h.1
    have h₃ : b + 7 ∣ 9 * b + 7 := h.2
    have h₄ : b + 7 ∣ 56 := by sorry
    have h₅ : b + 7 ∣ 56 := h₄
    have h₆ : b + 7 ≤ 56 := Nat.le_of_dvd (by norm_num) h₅
    have h₇ : b ≤ 49 := by sorry
  --  --    interval_cases b <;> norm_num at h₅ h₂ ⊢ <;> omega
  --  · intro h
    have h₂ : b = 21 ∨ b = 49 := by sorry
  --    cases h₂ with
  --    | inl h₂ =>
  --      rw [h₂]
  --      norm_num <;> (try decide) <;>
  --        (try {norm_num <;> (try decide)
  --          })
  --    | inr h₂ =>
  --      rw [h₂]
  --      norm_num <;> (try decide) <;>
  --        (try {norm_num <;> (try decide)
  --          })
  hole