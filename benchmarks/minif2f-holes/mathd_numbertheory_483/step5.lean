import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₆ (a : ℕ → ℕ) (h₀ : a 1 = 1) (h₁ : a 2 = 1) (h₂ : ∀ (n : ℕ), a (n + 2) = a (n + 1) + a n) (h₃ : a 0 = 0) (h₄ : a 3 = 2) (h₅ : a 4 = 3) : a 5 = 5 := by
  have h₆ := h₂ 3
  have h₇ := h₂ 4
  have h₈ := h₂ 5
  --  --  simp [h₀, h₁, h₃, h₄, h₅] at h₆ h₇ h₈ <;> omega
  hole