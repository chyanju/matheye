import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₁₂₁ (f : ℕ → ℕ → ℝ) (h₀ : ∀ (x : ℕ), 0 < x → f x x = (↑x : ℝ)) (h₁ : ∀ (x y : ℕ), 0 < x ∧ 0 < y → f x y = f y x) (h₂ : ∀ (x y : ℕ), 0 < x ∧ 0 < y → ((↑x : ℝ) + (↑y : ℝ)) * f x y = (↑y : ℝ) * f x (x + y)) (h₃ : f 2 2 = 2) (h₄ : f 2 4 = 4) (h₅ : f 4 2 = 4) (h₆ : f 4 6 = 12) (h₇ : f 4 10 = 20) (h₈ : f 10 4 = 20) (h₉ : f 10 14 = 70) (h₁₀ : f 14 10 = 70) (h₁₁ : f 14 24 = 168) : (14 + 24) * f 14 24 = 24 * f 14 38 :=
  by
  have h₁₂₂ : 0 < (14 : ℕ) ∧ 0 < (24 : ℕ) := by sorry
  have h₁₂₃ := h₂ 14 24 h₁₂₂
  --  --  --  --  norm_num at h₁₂₃ ⊢ <;> ring_nf at h₁₂₃ ⊢ <;> (try norm_num at h₁₂₃ ⊢) <;> (try linarith) <;>
      (try ring_nf at h₁₂₃ ⊢ <;> norm_num at h₁₂₃ ⊢ <;> linarith) <;>
    (try linarith)
  hole