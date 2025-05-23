import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₄ (n : ℕ) (h₀ : 2 ≤ n) (h₁ : ∃ x, x ^ 3 = n) (t : ℕ) (ht : t ^ 4 = n) (h₃ : t ≥ 2) : t ≥ 8 := by
  --  by_contra h
  have h₅ : t ≤ 7 := by sorry
  have h₆ : t = 2 ∨ t = 3 ∨ t = 4 ∨ t = 5 ∨ t = 6 ∨ t = 7 := by sorry
  --  rcases h₆ with (rfl | rfl | rfl | rfl | rfl | rfl)
  ·
    have h₇ : n = 16 := by sorry
  --    obtain ⟨x, hx⟩ := h₁
    have h₈ : x ^ 3 = 16 := by sorry
    have h₉ : x ≤ 2 := by sorry
  --  --    interval_cases x <;> norm_num at h₈ ⊢ <;> omega
  ·
    have h₇ : n = 81 := by sorry
  --    obtain ⟨x, hx⟩ := h₁
    have h₈ : x ^ 3 = 81 := by sorry
    have h₉ : x ≤ 4 := by sorry
  --  --    interval_cases x <;> norm_num at h₈ ⊢ <;> omega
  ·
    have h₇ : n = 256 := by sorry
  --    obtain ⟨x, hx⟩ := h₁
    have h₈ : x ^ 3 = 256 := by sorry
    have h₉ : x ≤ 6 := by sorry
  --  --    interval_cases x <;> norm_num at h₈ ⊢ <;> omega
  ·
    have h₇ : n = 625 := by sorry
  --    obtain ⟨x, hx⟩ := h₁
    have h₈ : x ^ 3 = 625 := by sorry
    have h₉ : x ≤ 8 := by sorry
  --  --    interval_cases x <;> norm_num at h₈ ⊢ <;> omega
  ·
    have h₇ : n = 1296 := by sorry
  --    obtain ⟨x, hx⟩ := h₁
    have h₈ : x ^ 3 = 1296 := by sorry
    have h₉ : x ≤ 10 := by sorry
  --  --    interval_cases x <;> norm_num at h₈ ⊢ <;> omega
  ·
    have h₇ : n = 2401 := by sorry
  --    obtain ⟨x, hx⟩ := h₁
    have h₈ : x ^ 3 = 2401 := by sorry
    have h₉ : x ≤ 13 := by sorry
  --  --    interval_cases x <;> norm_num at h₈ ⊢ <;> omega
  hole