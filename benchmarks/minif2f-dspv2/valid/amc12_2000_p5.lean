import Mathlib
import Aesop

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

/-- If $|x - 2| = p$, where $x < 2$, then $x - p =$

$ \textbf{(A)} \ -2 \qquad \textbf{(B)} \ 2 \qquad \textbf{(C)} \ 2-2p \qquad \textbf{(D)} \ 2p-2 \qquad \textbf{(E)} \ |2p-2|  $ Show that it is \text{(C)2-2p}.-/
theorem amc12_2000_p5 (x p : ℝ) (h₀ : x < 2) (h₁ : abs (x - 2) = p) : x - p = 2 - 2 * p := by
  have h₂ : x = 2 - p := by
    -- Consider the two cases for the absolute value equation |x - 2| = p
    cases' le_total 0 (x - 2) with h h <;>
      -- Simplify the absolute value based on the sign of (x - 2)
      simp_all [abs_of_nonneg, abs_of_nonpos, sub_eq_add_neg, neg_add_rev] <;>
      -- Solve the resulting linear equation using basic arithmetic
      linarith
    <;>
    -- Use linear arithmetic to confirm the solution
    linarith
  
  have h₃ : x - p = 2 - 2 * p := by
    -- Substitute the given value of x into the equation.
    rw [h₂]
    -- Simplify the expression by distributing and combining like terms.
    simp_all only [mul_one, sub_sub]
    -- Use linear arithmetic to simplify and prove the final expression.
    linarith
  
  -- Simplify the given equations and assumptions
  simp_all only [abs_of_nonneg, sub_nonneg, sub_nonpos]
  -- Use linear arithmetic to verify the equation
  <;> linarith

