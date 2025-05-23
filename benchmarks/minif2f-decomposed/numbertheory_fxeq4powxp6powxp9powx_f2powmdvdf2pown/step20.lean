theorem h_div (m n : ℕ) (f : ℕ → ℕ) (h₀ : ∀ (x : ℕ), f x = 4 ^ x + 6 ^ x + 9 ^ x) (h₁ : 0 < m ∧ 0 < n) (h₂ : m ≤ n) (h_main : ∀ (k : ℕ), f (2 * k) = f k * (f k - 2 * 6 ^ k)) : ∀ (k : ℕ), f k ∣ f (2 * k) := by
  intro k
  have h₁ : f (2 * k) = f k * (f k - 2 * 6 ^ k) := h_main k
  rw [h₁]
  exact
    ⟨f k - 2 * 6 ^ k, by
      cases k with
      | zero => simp [h₀, pow_zero, Nat.mul_sub_left_distrib, Nat.mul_sub_right_distrib]
      | succ k =>
        simp_all [Nat.mul_sub_left_distrib, Nat.mul_sub_right_distrib, Nat.add_assoc] <;> ring_nf at * <;>
            norm_num at * <;>
          omega⟩