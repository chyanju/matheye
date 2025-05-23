theorem h₄ (h₁ : 121 % 4 = 1) (h₂ : 122 % 4 = 2) (h₃ : 123 % 4 = 3) : 121 * 122 * 123 % 4 = 2 := by
  norm_num [h₁, h₂, h₃, Nat.mul_mod, Nat.add_mod, Nat.mod_mod, Nat.mod_eq_of_lt] <;> rfl