theorem h1  : 100 ^ 2 - 7 ^ 2 = (100 - 7) * (100 + 7) := by
  norm_num [sub_mul, add_mul, mul_sub, mul_add, mul_one, mul_assoc] <;> ring_nf <;> norm_num <;> linarith