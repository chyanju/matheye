theorem h₁ (x y : ℤ) : x ^ 5 % 11 = 0 ∨ x ^ 5 % 11 = 1 ∨ x ^ 5 % 11 = 10 :=
  by
  have h₂ :
    (x : ℤ) % 11 = 0 ∨
      (x : ℤ) % 11 = 1 ∨
        (x : ℤ) % 11 = 2 ∨
          (x : ℤ) % 11 = 3 ∨
            (x : ℤ) % 11 = 4 ∨
              (x : ℤ) % 11 = 5 ∨
                (x : ℤ) % 11 = 6 ∨ (x : ℤ) % 11 = 7 ∨ (x : ℤ) % 11 = 8 ∨ (x : ℤ) % 11 = 9 ∨ (x : ℤ) % 11 = 10 := by sorry
  rcases h₂ with (h₂ | h₂ | h₂ | h₂ | h₂ | h₂ | h₂ | h₂ | h₂ | h₂ | h₂) <;> (try omega) <;>
          (try {simp [h₂, pow_succ, Int.mul_emod, Int.sub_emod, Int.add_emod]
            }) <;>
        (try norm_num) <;>
      (try omega) <;>
    (try {(try norm_num) <;> (try omega)
      })