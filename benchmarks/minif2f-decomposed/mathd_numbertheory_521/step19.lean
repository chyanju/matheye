theorem h₆ (m n : ℕ) (h₀ : Even m) (h₁ : Even n) (h₂ : m - n = 2) (h₃ : m * n = 288) (h₄ : n ≥ 2) (h₅ : m = n + 2) : n = 16 := by
  rw [h₅] at h₃
  have h₆₁ : (n + 2) * n = 288 := by sorry
  have h₆₂ : n ≤ 16 := by sorry
  interval_cases n <;> norm_num at h₆₁ ⊢ <;> (try omega) <;> (try norm_num at h₅ ⊢ <;> omega) <;>
      (try simp_all [Nat.even_iff, Nat.odd_iff, Nat.mod_eq_of_lt]) <;>
    (try omega)