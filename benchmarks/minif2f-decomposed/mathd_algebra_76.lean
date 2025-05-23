import Mathlib
import Aesop

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

/-- For integers $n$, let \[f(n) = \left\{
\begin{array}{cl}
n^2 & \text{ if }n\text{ is odd}, \\
n^2 - 4n - 1 & \text{ if }n\text{ is even}.
\end{array}
\right.\]Find $f(f(f(f(f(4)))))$. Show that it is 1.-/
theorem mathd_algebra_76 (f : ℤ → ℤ) (h₀ : ∀ n, Odd n → f n = n ^ 2)
    (h₁ : ∀ n, Even n → f n = n ^ 2 - 4 * n - 1) : f 4 = -1 := by
  have h₂ : Even (4 : ℤ) := by
    rw [Int.even_iff]
    <;> norm_num
    <;>
    trivial
  
  have h₃ : f 4 = (4 : ℤ) ^ 2 - 4 * (4 : ℤ) - 1 := by
    have h₄ : f 4 = (4 : ℤ) ^ 2 - 4 * (4 : ℤ) - 1 := by
      have h₅ : Even (4 : ℤ) := h₂
      have h₆ : f 4 = (4 : ℤ) ^ 2 - 4 * (4 : ℤ) - 1 := by
        apply h₁
        exact h₅
      rw [h₆]
    exact h₄
  
  have h₄ : f 4 = -1 := by
    rw [h₃]
    <;> norm_num
    <;>
    trivial
  
  apply h₄
