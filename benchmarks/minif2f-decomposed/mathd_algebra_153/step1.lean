theorem mathd_algebra_153 (n : ℝ) (h₀ : n = 1 / 3) : ⌊10 * n⌋ + ⌊100 * n⌋ + ⌊1000 * n⌋ + ⌊10000 * n⌋ = 3702 :=
  by
  have h₁ : Int.floor (10 * n) = 3 := by sorry
  have h₂ : Int.floor (100 * n) = 33 := by sorry
  have h₃ : Int.floor (1000 * n) = 333 := by sorry
  have h₄ : Int.floor (10000 * n) = 3333 := by sorry
  have h₅ : Int.floor (10 * n) + Int.floor (100 * n) + Int.floor (1000 * n) + Int.floor (10000 * n) = 3702 := by sorry
  apply h₅