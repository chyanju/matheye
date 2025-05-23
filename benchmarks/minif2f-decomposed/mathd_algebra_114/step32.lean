theorem h₈₁ (a : ℝ) (h₀ : a = 8) (h₁ : a > 0) (h₂ : (a ^ 2) ^ (1 / 3) = a ^ (2 / 3)) (h₃ : (16 * (a ^ 2) ^ (1 / 3)) ^ (1 / 3) = (16 * a ^ (2 / 3)) ^ (1 / 3)) (h₄ : a ^ (2 / 3) = 4) (h₅ : (16 * (a ^ 2) ^ (1 / 3)) ^ (1 / 3) = (16 * 4) ^ (1 / 3)) (h₆ : (16 * 4) ^ (1 / 3) = 64 ^ (1 / 3)) (h₇₂ : Real.log (64 ^ (1 / 3)) = Real.log 4) (h₇₈ : 64 ^ (1 / 3) > 0) (h₇₉ : 4 > 0) (h₈₀ : Real.log (64 ^ (1 / 3)) = Real.log 4) : 64 ^ (1 / 3) = 4 :=
  by
  apply Real.log_injOn_pos (Set.mem_Ioi.mpr h₇₈) (Set.mem_Ioi.mpr h₇₉)
  linarith