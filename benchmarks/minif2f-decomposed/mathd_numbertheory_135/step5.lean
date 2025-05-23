theorem h₁₀ (n A B C : ℕ) (h₀ : n = 3 ^ 17 + 3 ^ 10) (h₁ : 11 ∣ n + 1) (h₂ : List.Pairwise (fun x1 x2 => x1 ≠ x2) [A, B, C]) (h₃ : {A, B, C} ⊂ Finset.Icc 0 9) (h₄ : Odd A ∧ Odd C) (h₅ : ¬3 ∣ B) (h₆ : digits 10 n = [B, A, B, C, C, A, C, B, A]) (h₇ : n = 129199212) (h₈ : B = 2) (h₉ : A = 1) : C = 9 := by
  rw [h₇] at h₆
  norm_num [Nat.digits_len] at h₆ <;> (try omega) <;>
            (try {aesop
              }) <;>
          (try {simp_all [Finset.ext_iff, Finset.mem_Icc, List.Pairwise] <;> omega
            }) <;>
        (try {norm_num at h₆ ⊢ <;> aesop
          }) <;>
      (try {
          rcases h₄ with ⟨h₄₁, h₄₂⟩
          cases' h₄₁ with k hk <;> cases' h₄₂ with m hm <;> omega
        }) <;>
    (try {omega
      })