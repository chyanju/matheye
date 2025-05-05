import Mathlib
import Aesop

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

/-- If $f(x)=x^3-8$, what is $f^{-1}(f(f^{-1}(19)))$? Show that it is 3.-/
theorem mathd_algebra_323 (σ : Equiv ℝ ℝ) (h : ∀ x, σ.1 x = x ^ 3 - 8) : σ.2 (σ.1 (σ.2 19)) = 3 := by
  have h_inv_19 : σ.2 19 = 3 := by
    -- Simplify the goal by applying the inverse function properties and using the given function definition.
    simp_all [Equiv.symm_apply_eq, pow_three]
    -- Normalize the expression to confirm the solution.
    <;> norm_num
    <;> nlinarith
  
  have h_f_inv_19 : σ.1 (σ.2 19) = 19 := by
    -- Simplify the expression using the given function definition and the inverse function's value at 19.
    simp_all [Equiv.eq_symm_apply]
    -- Verify the algebraic manipulation.
    <;> norm_num
    -- Confirm the numerical correctness.
    <;> linarith
  
  have h_final : σ.2 (σ.1 (σ.2 19)) = 3 := by
    simp_all [Equiv.symm_apply_eq]
  
  -- Simplify the goal using the given hypotheses.
  simp_all

