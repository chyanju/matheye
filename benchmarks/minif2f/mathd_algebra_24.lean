import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

theorem mathd_algebra_24 (x : ℝ) (h₀ : x / 50 = 40) : x = 2000 := by
  have h₁ : x = 2000 := by
    have h₁ : x = 40 * 50 := by
      have h₁ : x / 50 = 40 := by
        exact h₀
      have h₂ : x = 40 * 50 := by
        -- option 1
        field_simp at h₀
        exact h₀
        -- option 2
        -- rw [← h₀]
        -- ring
      exact h₂
    have h₂ : x = 2000 := by
      rw [h₁]
      norm_num
    exact h₂
  exact h₁
