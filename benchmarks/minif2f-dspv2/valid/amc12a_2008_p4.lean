import Mathlib
import Aesop

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

/-- Which of the following is equal to the [[product]]
$\frac{8}{4}\cdot\frac{12}{8}\cdot\frac{16}{12}\cdot\cdots\cdot\frac{4n+4}{4n}\cdot\cdots\cdot\frac{2008}{2004}?$

$\textbf{(A)}\ 251\qquad\textbf{(B)}\ 502\qquad\textbf{(C)}\ 1004\qquad\textbf{(D)}\ 2008\qquad\textbf{(E)}\ 4016$ Show that it is \textbf{(B)}.-/
theorem amc12a_2008_p4 : (∏ k in Finset.Icc (1 : ℕ) 501, ((4 : ℝ) * k + 4) / (4 * k)) = 502 := by
  norm_num [Finset.prod_range_succ]
  <;> norm_num
  <;> rw [show (4 : ℝ) = (4 : ℚ) by norm_num]
  <;> norm_cast
  <;> simp [Finset.prod_range_succ]
  <;> norm_num
  <;> ring
  <;> simp_all
  <;> norm_num
  <;> ring
  <;> simp_all
  <;> norm_num
  <;> ring
  <;> simp_all
  <;> norm_num
  <;> ring
  <;> simp_all
  <;> norm_num
  <;> ring
  <;> simp_all
  <;> norm_num
  <;> ring
  <;> simp_all
  <;> norm_num
  <;> ring
  <;> simp_all
  <;> norm_num
  <;> ring
  <;> simp_all
  <;> norm_num
  <;> ring
  <;> simp_all
  <;> norm_num
  <;> ring
  <;> simp_all
  <;> norm_num
  <;> ring
  <;> simp_all
  <;> norm_num
  <;> ring
  <;> simp_all
  <;> norm_num
  <;> ring
  <;> simp_all
  <;> norm_num
  <;> ring
  <;> simp_all
  <;> norm_num
  <;> ring
  <;> simp_all
  <;> norm_num
  <;> ring
  <;> simp_all
  <;> norm_num
  <;> ring
  <;> simp_all

