import Mathlib
import Aesop

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

/-- Find the minimum value of $\frac{9x^2\sin^2 x + 4}{x\sin x}$ for $0 < x < \pi$. Show that it is 012.-/
theorem aime_1983_p9 (x : ℝ) (h₀ : 0 < x ∧ x < Real.pi) :
  12 ≤ (9 * (x ^ 2 * Real.sin x ^ 2) + 4) / (x * Real.sin x) := by
  have h₁ : 0 < x := by linarith
  have h₂ : 0 < sin x := by exact Real.sin_pos_of_pos_of_lt_pi h₁ h₀.2
  have h₃ : 0 < x * sin x := mul_pos h₁ h₂
  field_simp [h₁.ne', h₂.ne', h₃.ne']
  rw [le_div_iff h₃]
  nlinarith [sq_nonneg (x * sin x - 2 / 3), sq_nonneg (3 / 2 - x * sin x)]

