theorem h₃ (x y : ℤ) (h₁ : x ^ 5 % 11 = 0 ∨ x ^ 5 % 11 = 1 ∨ x ^ 5 % 11 = 10) : (y ^ 2 + 4) % 11 = 2 ∨
    (y ^ 2 + 4) % 11 = 4 ∨ (y ^ 2 + 4) % 11 = 5 ∨ (y ^ 2 + 4) % 11 = 7 ∨ (y ^ 2 + 4) % 11 = 8 ∨ (y ^ 2 + 4) % 11 = 9 :=
  by
  have h₄ :
    (y : ℤ) % 11 = 0 ∨
      (y : ℤ) % 11 = 1 ∨
        (y : ℤ) % 11 = 2 ∨
          (y : ℤ) % 11 = 3 ∨
            (y : ℤ) % 11 = 4 ∨
              (y : ℤ) % 11 = 5 ∨
                (y : ℤ) % 11 = 6 ∨ (y : ℤ) % 11 = 7 ∨ (y : ℤ) % 11 = 8 ∨ (y : ℤ) % 11 = 9 ∨ (y : ℤ) % 11 = 10 := by sorry
  rcases h₄ with (h₄ | h₄ | h₄ | h₄ | h₄ | h₄ | h₄ | h₄ | h₄ | h₄ | h₄) <;> (try omega) <;>
          (try {simp [h₄, pow_two, Int.mul_emod, Int.add_emod, Int.emod_emod]
            }) <;>
        (try norm_num) <;>
      (try omega) <;>
    (try {(try norm_num) <;> (try omega)
      })