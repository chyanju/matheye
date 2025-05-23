theorem h  : 5 ^ 30 % 7 = 1 := by
  norm_num [pow_succ, Nat.mul_mod, Nat.pow_mod, Nat.mod_mod, Nat.mod_eq_of_lt, show 7 > 0 by decide] <;> rfl <;>
        simp_all <;>
      norm_num <;>
    rfl