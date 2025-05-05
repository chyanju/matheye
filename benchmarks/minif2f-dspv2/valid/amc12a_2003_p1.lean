import Mathlib
import Aesop

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

/-- What is the difference between the sum of the first $2003$ even counting numbers and the sum of the first $2003$ odd counting numbers? 

$ \mathrm{(A) \ } 0\qquad \mathrm{(B) \ } 1\qquad \mathrm{(C) \ } 2\qquad \mathrm{(D) \ } 2003\qquad \mathrm{(E) \ } 4006 $ Show that it is \mathrm{(D)}\ 2003.-/
theorem amc12a_2003_p1 (u v : ℕ → ℕ) (h₀ : ∀ n, u n = 2 * n + 2) (h₁ : ∀ n, v n = 2 * n + 1) :
    ((∑ k in Finset.range 2003, u k) - ∑ k in Finset.range 2003, v k) = 2003 := by
  simp_all only [mul_add, mul_one, mul_comm, Nat.mul_sub_left_distrib]
  rfl

