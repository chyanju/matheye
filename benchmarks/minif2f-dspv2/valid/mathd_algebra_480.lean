import Mathlib
import Aesop

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

/-- Let \[f(x) = \begin{cases}
-x^2 - 1 &\text{if }x<0, \\
2&\text{if }0 \le x< 4, \\
\sqrt{x}&\text{if }x \ge 4.
\end{cases}
\]Find $f(\pi)$. Show that it is 2.-/
theorem mathd_algebra_480 (f : ℝ → ℝ) (h₀ : ∀ x < 0, f x = -x ^ 2 - 1)
  (h₁ : ∀ x, 0 ≤ x ∧ x < 4 → f x = 2) (h₂ : ∀ x ≥ 4, f x = Real.sqrt x) : f Real.pi = 2 := by
  have h : Real.pi ≥ 0 := Real.pi_pos.le
  by_cases h₁ : Real.pi < 4
  <;> by_cases h₂ : Real.pi < 0
  <;> by_cases h₃ : Real.pi ≥ 4
  <;> simp_all [h₀, h₁, h₂, h₃, Real.sqrt_eq_iff_sq_eq]
  <;> nlinarith [Real.pi_le_four]
  <;> nlinarith [Real.pi_pos]
  <;> nlinarith [Real.pi_le_four]
  <;> nlinarith [Real.pi_pos]
