theorem h₆ (a : ℕ) (h₀ : Even a) (h₁ : (↑(∑ k ∈ Finset.range 8, 2 * k + 1) : ℤ) - (↑(∑ k ∈ Finset.range 5, a + 2 * sorry) : ℤ) = 4) (h₂ : ∑ k ∈ Finset.range 8, (2 * k + 1) = 64) (h₃ : ∑ k ∈ Finset.range 5, (a + 2 * k) = 5 * a + 20) (h₅ : ∑ k ∈ Finset.range 8, 2 * k + 1 = 64) : ∑ k ∈ Finset.range 5, a + 2 * sorry = 5 * a + 20 := by
  norm_num [Finset.sum_range_succ, Finset.sum_range_succ, Finset.sum_range_succ, Finset.sum_range_succ,
          Finset.sum_range_succ, Nat.mul_add, Nat.add_assoc, Nat.add_mul] at h₃ ⊢ <;>
        ring_nf at * <;>
      norm_num at * <;>
    omega