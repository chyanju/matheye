import Mathlib
import Aesop

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

/-- Evaluate $\left(\frac{i}{2}\right)^2$. Show that it is -\frac{1}{4}.-/
theorem mathd_algebra_302 : (Complex.I / 2) ^ 2 = -(1 / 4) := by
  have h₀ : (Complex.I / 2 : ℂ) ^ 2 = -(1 / 4 : ℂ) := by
    norm_num [Complex.ext_iff, pow_two, Complex.I_mul_I, Complex.div_re, Complex.div_im, Complex.normSq]
    <;> ring_nf
    <;> norm_num
    <;>
    simp [Complex.ext_iff, pow_two, Complex.I_mul_I, Complex.div_re, Complex.div_im, Complex.normSq]
    <;>
    norm_num
    <;>
    ring_nf
    <;>
    norm_num
    <;>
    simp [Complex.ext_iff, pow_two, Complex.I_mul_I, Complex.div_re, Complex.div_im, Complex.normSq]
    <;>
    norm_num
    <;>
    ring_nf
    <;>
    norm_num
  
  simpa using h₀
