import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₁₈ (a : ℕ → ℕ) (h₀ : a 1 = 1) (h₁ : a 2 = 1) (h₂ : ∀ (n : ℕ), a (n + 2) = a (n + 1) + a n) (h₃ : a 0 = 0) (h₄ : a 3 = 2) (h₅ : a 4 = 3) (h₆ : a 5 = 5) (h₇ : a 6 = 8) (h₈ : a 7 = 13) (h₉ : a 8 = 21) (h₁₀ : a 9 = 34) (h₁₁ : a 10 = 55) (h₁₂ : ∀ (n : ℕ), a (n + 6) % 4 = a n % 4) : a 100 % 4 = a 4 % 4 := by
  have h₁₉ := h₁₂ 94
  have h₂₀ := h₁₂ 88
  have h₂₁ := h₁₂ 82
  have h₂₂ := h₁₂ 76
  have h₂₃ := h₁₂ 70
  have h₂₄ := h₁₂ 64
  have h₂₅ := h₁₂ 58
  have h₂₆ := h₁₂ 52
  have h₂₇ := h₁₂ 46
  have h₂₈ := h₁₂ 40
  have h₂₉ := h₁₂ 34
  have h₃₀ := h₁₂ 28
  have h₃₁ := h₁₂ 22
  have h₃₂ := h₁₂ 16
  have h₃₃ := h₁₂ 10
  have h₃₄ := h₁₂ 4
  --  --  norm_num at h₁₉ h₂₀ h₂₁ h₂₂ h₂₃ h₂₄ h₂₅ h₂₆ h₂₇ h₂₈ h₂₉ h₃₀ h₃₁ h₃₂ h₃₃ h₃₄ ⊢ <;> (try omega) <;>
          (try ring_nf at h₁₉ h₂₀ h₂₁ h₂₂ h₂₃ h₂₄ h₂₅ h₂₆ h₂₇ h₂₈ h₂₉ h₃₀ h₃₁ h₃₂ h₃₃ h₃₄ ⊢) <;>
        (try omega) <;>
      (try ring_nf) <;>
    (try omega)
  hole