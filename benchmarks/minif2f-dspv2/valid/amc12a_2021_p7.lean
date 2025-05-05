import Mathlib
import Aesop

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

/-- What is the least possible value of $(xy-1)^2+(x+y)^2$ for real numbers $x$ and $y$?

$\textbf{(A)} ~0\qquad\textbf{(B)} ~\frac{1}{4}\qquad\textbf{(C)} ~\frac{1}{2} \qquad\textbf{(D)} ~1 \qquad\textbf{(E)} Show that it is \textbf{(D)} ~1.-/
theorem amc12a_2021_p7 (x y : ℝ) : 1 ≤ (x * y - 1) ^ 2 + (x + y) ^ 2 := by
  nlinarith [sq_nonneg (x - y), sq_nonneg (x + y), sq_nonneg (x * y - 1), sq_nonneg (x * y + 1),
    sq_nonneg (x + y + 2), sq_nonneg (x + y - 2), sq_nonneg (x - y + 2), sq_nonneg (x - y - 2)]

