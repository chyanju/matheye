import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₆ (m n : ℕ) (h₀ : 1 < m) (h₁ : 1 < n) (h₂ : m * n = 2005) (h₃ : m ≤ 1002) (h₄ : n ≤ 1002) (h₅ : m = 5 ∨ m = 401) : m + n = 406 := by
  have h₆₁ : m = 5 ∨ m = 401 := h₅
  --  cases h₆₁ with
  --  | inl h₆₁ =>
  --    have h₆₂ : m = 5 := h₆₁
  --    have h₆₃ : n = 401 := by
  --      have h₆₄ : m * n = 2005 := h₂
  --      rw [h₆₂] at h₆₄
  --      norm_num at h₆₄ ⊢ <;> nlinarith
  --    rw [h₆₂, h₆₃] <;> norm_num
  --  | inr h₆₁ =>
  --    have h₆₂ : m = 401 := h₆₁
  --    have h₆₃ : n = 5 := by
  --      have h₆₄ : m * n = 2005 := h₂
  --      rw [h₆₂] at h₆₄
  --      norm_num at h₆₄ ⊢ <;> nlinarith
  --    rw [h₆₂, h₆₃] <;> norm_num
  hole