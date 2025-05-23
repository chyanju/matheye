theorem mathd_numbertheory_341 (a b c : ℕ) (h₀ : a ≤ 9 ∧ b ≤ 9 ∧ c ≤ 9) (h₁ : digits 10 (5 ^ 100 % 1000) = [c, b, a]) : a + b + c = 13 :=
  by
  have h₂ : 5 ^ 100 % 1000 = 625 := by sorry
  have h₃ : Nat.digits 10 (5 ^ 100 % 1000) = [5, 2, 6] := by sorry
  have h₄ : [c, b, a] = [5, 2, 6] := by sorry
  have h₅ : a = 6 := by sorry
  have h₆ : b = 2 := by sorry
  have h₇ : c = 5 := by sorry
  have h₈ : a + b + c = 13 := by sorry
  apply h₈