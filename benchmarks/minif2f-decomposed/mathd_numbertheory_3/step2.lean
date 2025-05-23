theorem h_sum  : (∑ x ∈ Finset.range 10, (x + 1) ^ 2) % 10 = 5 := by
  norm_num [Finset.sum_range_succ, Finset.sum_range_succ, Finset.sum_range_succ, Finset.sum_range_succ,
      Finset.sum_range_succ, Finset.sum_range_succ, Finset.sum_range_succ, Finset.sum_range_succ, Finset.sum_range_succ,
      Finset.sum_range_succ, Nat.pow_succ, Nat.mul_mod, Nat.add_mod, Nat.mod_mod] <;>
    rfl