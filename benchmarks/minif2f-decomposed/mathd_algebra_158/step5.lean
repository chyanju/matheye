theorem h₅ (a : ℕ) (h₀ : Even a) (h₁ : (↑(∑ k ∈ Finset.range 8, 2 * k + 1) : ℤ) - (↑(∑ k ∈ Finset.range 5, a + 2 * sorry) : ℤ) = 4) (h₂ : ∑ k ∈ Finset.range 8, (2 * k + 1) = 64) (h₃ : ∑ k ∈ Finset.range 5, (a + 2 * k) = 5 * a + 20) : ∑ k ∈ Finset.range 8, 2 * k + 1 = 64 := by
  norm_num [Finset.sum_range_succ, Finset.sum_range_succ, Finset.sum_range_succ, Finset.sum_range_succ,
            Finset.sum_range_succ, Finset.sum_range_succ, Finset.sum_range_succ, Finset.sum_range_succ] at h₂ ⊢ <;>
          simp_all [Finset.sum_range_succ, Nat.even_iff] <;>
        ring_nf at * <;>
      norm_num at * <;>
    omega