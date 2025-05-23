theorem mathd_algebra_392 (n : ℕ) (h₀ : Even n) (h₁ : ((↑n : ℤ) - 2) ^ 2 + (↑n : ℤ) ^ 2 + ((↑n : ℤ) + 2) ^ 2 = 12296) : ((↑n : ℤ) - 2) * (↑n : ℤ) * ((↑n : ℤ) + 2) / 8 = 32736 :=
  by
  have h₂ : (n : ℤ) ^ 2 = 4096 := by sorry
  have h₃ : n = 64 := by sorry
  have h₄ : (↑n - 2) * ↑n * (↑n + 2) / 8 = (32736 : ℤ) :=
    by
    rw [h₃]
    norm_num <;> (try ring_nf at h₁ ⊢) <;> (try norm_num at h₁ ⊢) <;> (try linarith) <;> (try omega)
  have h₄ : (↑n - 2) * ↑n * (↑n + 2) / 8 = (32736 : ℤ) := by sorry
have mathd_algebra_392 (n : ℕ) (h₀ : Even n) (h₁ : (↑n - 2) ^ 2 + ↑n ^ 2 + (↑n + 2) ^ 2 = (12296 : ℤ)) :
  (↑n - 2) * ↑n * (↑n + 2) / 8 = (32736 : ℤ) :=
  by
  have h₂ : (n : ℤ) ^ 2 = 4096 := by sorry
  have h₃ : n = 64 := by sorry
  have h₄ : (↑n - 2) * ↑n * (↑n + 2) / 8 = (32736 : ℤ) :=
    by
    rw [h₃]
    norm_num <;> (try ring_nf at h₁ ⊢) <;> (try norm_num at h₁ ⊢) <;> (try linarith) <;> (try omega)
  exact h₄