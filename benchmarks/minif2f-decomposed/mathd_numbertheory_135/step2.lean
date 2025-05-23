theorem h₇ (n A B C : ℕ) (h₀ : n = 3 ^ 17 + 3 ^ 10) (h₁ : 11 ∣ n + 1) (h₂ : List.Pairwise (fun x1 x2 => x1 ≠ x2) [A, B, C]) (h₃ : {A, B, C} ⊂ Finset.Icc 0 9) (h₄ : Odd A ∧ Odd C) (h₅ : ¬3 ∣ B) (h₆ : digits 10 n = [B, A, B, C, C, A, C, B, A]) : n = 129199212 := by
  rw [h₀]
  norm_num <;> rfl