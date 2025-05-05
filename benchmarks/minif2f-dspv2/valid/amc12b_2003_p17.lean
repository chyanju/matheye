import Mathlib
import Aesop

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

/-- If $\log (xy^3) = 1$ and $\log (x^2y) = 1$, what is $\log (xy)$?

$\mathrm{(A)}\ -\frac 12 
\qquad\mathrm{(B)}\ 0 
\qquad\mathrm{(C)}\ \frac 12
\qquad\mathrm{(D)}\ \frac 35 
\qquad\mathrm{(E)}\ 1$ Show that it is \mathrm{(D)} \frac 35.-/
theorem amc12b_2003_p17 (x y : ℝ) (h₀ : 0 < x ∧ 0 < y) (h₁ : Real.log (x * y ^ 3) = 1)
  (h₂ : Real.log (x ^ 2 * y) = 1) : Real.log (x * y) = 3 / 5 := by
  have hx : 0 < x := by linarith
  have hy : 0 < y := by linarith
  have hxy : 0 < x * y := by positivity
  field_simp [Real.log_mul, Real.log_pow, hx, hy, hxy] at h₁ h₂ ⊢
  ring_nf at h₁ h₂ ⊢
  linarith

