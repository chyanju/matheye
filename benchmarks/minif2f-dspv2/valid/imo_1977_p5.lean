import Mathlib
import Aesop

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

/-- Let $a,b$ be two natural numbers. When we divide $a^2+b^2$ by $a+b$, we the the remainder $r$ and the quotient $q.$ Determine all pairs $(a, b)$ for which $q^2 + r = 1977.$ Show that it is (a,b)=(37,50) , (7, 50).-/
theorem imo_1977_p5 (a b q r : ℕ) (h₀ : r < a + b) (h₁ : a ^ 2 + b ^ 2 = (a + b) * q + r)
  (h₂ : q ^ 2 + r = 1977) :
  abs ((a : ℤ) - 22) = 15 ∧ abs ((b : ℤ) - 22) = 28 ∨
    abs ((a : ℤ) - 22) = 28 ∧ abs ((b : ℤ) - 22) = 15 := by
  have h₃ : q ≤ 1977 := by
    nlinarith [sq_nonneg (a + b : ℤ), sq_nonneg (a - b : ℤ)]
  have h₄ : q = 44 := by
    nlinarith [sq_nonneg (a + b : ℤ), sq_nonneg (a - b : ℤ)]
  rw [h₄] at h₁ h₂
  have h₅ : a ≤ 66 := by
    nlinarith [sq_nonneg (a + b : ℤ), sq_nonneg (a - b : ℤ)]
  have h₆ : b ≤ 66 := by
    nlinarith [sq_nonneg (a + b : ℤ), sq_nonneg (a - b : ℤ)]
  interval_cases a <;> interval_cases b <;> norm_num at h₁ h₂ ⊢ <;> omega
