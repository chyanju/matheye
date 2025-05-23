theorem h₁ (n : ℕ) (h₀ : ¬Nat.Prime (7 + 30 * n)) : n ≥ 6 := by
  by_contra h
  have h₂ : n ≤ 5 := by sorry
  interval_cases n <;> norm_num [Nat.Prime] at h₀ ⊢ <;> (try contradiction) <;> (try norm_num) <;> (try decide) <;>
              (try omega) <;>
            norm_num [Nat.Prime] at h₀ ⊢ <;>
          (try contradiction) <;>
        (try norm_num) <;>
      (try decide) <;>
    (try omega)