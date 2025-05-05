import Mathlib
import Aesop

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

/-- The remainder can be defined for all real numbers $x$ and $y$ with $y \neq 0$ by $\text{rem} (x ,y)=x-y\left \lfloor \frac{x}{y} \right \rfloor$where $\left \lfloor \tfrac{x}{y} \right \rfloor$ denotes the greatest integer less than or equal to $\tfrac{x}{y}$. What is the value of $\text{rem} (\tfrac{3}{8}, -\tfrac{2}{5} )$?

$\textbf{(A) } -\frac{3}{8} \qquad \textbf{(B) } -\frac{1}{40} \qquad \textbf{(C) } 0 \qquad \textbf{(D) } \frac{3}{8} \qquad \textbf{(E) } \frac{31}{40}$ Show that it is \textbf{(B) } -\frac{1}{40}.-/
theorem amc12a_2016_p3 (f : ℝ → ℝ → ℝ)
  (h₀ : ∀ x, ∀ (y) (_ : y ≠ 0), f x y = x - y * Int.floor (x / y)) :
  f (3 / 8) (-(2 / 5)) = -(1 / 40) := by
  -- Use the given definition of f to compute f(3/8, -2/5)
  have h₁ := h₀ (3 / 8) (-(2 / 5)) (by norm_num)
  -- Simplify the expression using numerical computations
  norm_num at h₁
  -- Use the property of the floor function to simplify further
  <;> simp_all [Int.floor_eq_iff]
  -- Normalize the numerical expressions
  <;> norm_num
  -- Simplify the fractions
  <;> field_simp
  -- Normalize the cast to integers
  <;> norm_cast

