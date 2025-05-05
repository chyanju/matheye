import Mathlib
import Aesop

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

/-- For all integers $n \geq 9,$ the value of
$\frac{(n+2)!-(n+1)!}{n!}$is always which of the following?

$\textbf{(A) } \text{a multiple of 4} \qquad \textbf{(B) } \text{a multiple of 10} \qquad \textbf{(C) } \text{a prime number} \qquad \textbf{(D) } \text{a perfect square} \qquad \textbf{(E) } \text{a perfect cube}$ Show that it is \textbf{(D) } \text{a perfect square}.-/
theorem amc12b_2020_p6 (n : ℕ) (h₀ : 9 ≤ n) : ∃ x : ℕ, (x : ℝ) ^ 2 = ((n + 2)! - (n + 1)!) / n ! := by
  have h₁ : ((n + 1 : ℕ) : ℝ) ^ 2 = ((n + 2)! - (n + 1)!) / n ! := by
    have h₂ : (n + 2 : ℕ) ! = (n + 2 : ℕ) * (n + 1 : ℕ) * n ! := by
      have h₃ : (n + 2 : ℕ) ! = (n + 2 : ℕ) * (n + 1 : ℕ) * n ! := by
        calc
          (n + 2 : ℕ)! = (n + 2 : ℕ) * (n + 1 : ℕ)! := by
            simp [Nat.factorial_succ, Nat.mul_succ]
            <;> ring_nf
          _ = (n + 2 : ℕ) * ((n + 1 : ℕ) * n !) := by
            simp [Nat.factorial_succ, Nat.mul_succ]
            <;> ring_nf
          _ = (n + 2 : ℕ) * (n + 1 : ℕ) * n ! := by
            ring_nf
            <;> simp [Nat.mul_assoc]
            <;> ring_nf
      exact h₃
    have h₃ : (n + 1 : ℕ) ! = (n + 1 : ℕ) * n ! := by
      have h₄ : (n + 1 : ℕ) ! = (n + 1 : ℕ) * n ! := by
        calc
          (n + 1 : ℕ)! = (n + 1 : ℕ) * n ! := by
            simp [Nat.factorial_succ, Nat.mul_succ]
            <;> ring_nf
          _ = (n + 1 : ℕ) * n ! := by rfl
      exact h₄
    have h₄ : ((n + 2 : ℕ) ! : ℝ) = ((n + 2 : ℕ) * (n + 1 : ℕ) * n ! : ℝ) := by
      norm_cast
      <;> simp [h₂]
      <;> ring_nf
    have h₅ : ((n + 1 : ℕ) ! : ℝ) = ((n + 1 : ℕ) * n ! : ℝ) := by
      norm_cast
      <;> simp [h₃]
      <;> ring_nf
    have h₆ : (((n + 2 : ℕ) ! : ℝ) - ((n + 1 : ℕ) ! : ℝ)) = ((n + 1 : ℕ) ^ 2 * n ! : ℝ) := by
      rw [h₄, h₅]
      <;> norm_num
      <;> ring_nf
      <;> norm_cast
      <;> simp [Nat.mul_assoc, Nat.mul_comm, Nat.mul_left_comm]
      <;> ring_nf
      <;> norm_num
      <;> simp [Nat.mul_assoc, Nat.mul_comm, Nat.mul_left_comm]
      <;> ring_nf
      <;> norm_num
    have h₇ : ((n + 1 : ℕ) : ℝ) ^ 2 = (((n + 2 : ℕ) ! : ℝ) - ((n + 1 : ℕ) ! : ℝ)) / (n ! : ℝ) := by
      rw [h₆]
      have h₈ : (n ! : ℝ) ≠ 0 := by
        norm_cast
        exact Nat.factorial_ne_zero n
      field_simp [h₈]
      <;> ring_nf
      <;> norm_cast
      <;> simp [Nat.mul_assoc, Nat.mul_comm, Nat.mul_left_comm]
      <;> ring_nf
      <;> norm_num
      <;> linarith
    simpa using h₇
  
  have h₂ : ∃ x : ℕ, (x : ℝ) ^ 2 = ((n + 2)! - (n + 1)!) / n ! := by
    refine' ⟨n + 1, _⟩
    simpa using h₁
  
  apply h₂
