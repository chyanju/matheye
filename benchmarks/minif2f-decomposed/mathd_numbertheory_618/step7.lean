theorem h₅ (n : ℕ) (hn : n > 0) (p : ℕ → ℕ) (h₀ : ∀ (x : ℕ), p x = x ^ 2 - x + 41) (h₁ : 1 < (p n).gcd (p (n + 1))) (h₂ : p (n + 1) = p n + 2 * n) (h₃ : (p n).gcd (p (n + 1)) = (p n).gcd (2 * n)) (h₄ : 1 < (p n).gcd (2 * n)) : 41 ≤ n := by
  by_contra h
  have h₆ : n ≤ 40 := by sorry
  have h₇ : n ≤ 40 := by sorry
  interval_cases n <;> norm_num [h₀, Nat.gcd_eq_right, Nat.gcd_eq_left, Nat.gcd_eq_right] at h₄ ⊢ <;> (try omega) <;>
            (try contradiction) <;>
          (try norm_num) <;>
        (try {
            ring_nf at h₄ ⊢
            norm_num at h₄ ⊢ <;> (try omega) <;> (try contradiction)
          }) <;>
      (try omega) <;>
    (try contradiction)