theorem h₆ (r n : ℕ) (h₀ : r = 1342 % 13) (h₁ : 0 < n) (h₂ : 1342 ∣ n) (h₃ : n % 13 < r) (h₄ : r = 3) (h₅ : n % 13 < 3) : ¬n < 6710 := by
  intro h₆
  have h₇ : n < 6710 := h₆
  have h₈ : 1342 ∣ n := h₂
  have h₉ : n % 13 < 3 := h₅
  have h₁₀ : n = 1342 ∨ n = 2684 ∨ n = 4026 ∨ n = 5368 := by sorry
  rcases h₁₀ with (rfl | rfl | rfl | rfl)
  · norm_num at h₉ ⊢ <;> omega
  · norm_num at h₉ ⊢ <;> omega
  · norm_num at h₉ ⊢ <;> omega
  · norm_num at h₉ ⊢ <;> omega