theorem h₃ (n : ℕ) (h₀ : Even n) (h₁ : ((↑n : ℤ) - 2) ^ 2 + (↑n : ℤ) ^ 2 + ((↑n : ℤ) + 2) ^ 2 = 12296) (h₂ : (↑n : ℤ) ^ 2 = 4096) : n = 64 :=
  by
  have h₃₁ : n ≤ 64 := by sorry
  interval_cases n <;> norm_num at h₂ ⊢ <;> (try omega) <;>
          (try norm_num [Int.ofNat_eq_coe, Nat.even_iff, Nat.odd_iff] at h₀ h₁ h₂ ⊢) <;>
        (try ring_nf at h₁ h₂ ⊢) <;>
      (try linarith) <;>
    (try omega)