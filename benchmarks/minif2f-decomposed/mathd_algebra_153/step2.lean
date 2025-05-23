theorem h₁ (n : ℝ) (h₀ : n = 1 / 3) : ⌊10 * n⌋ = 3 := by
  rw [h₀]
  norm_num [Int.floor_eq_iff, Int.cast_ofNat] <;> norm_num <;> (try constructor <;> norm_num) <;> (try linarith) <;>
      (try ring_nf at * <;> norm_num) <;>
    (try linarith)