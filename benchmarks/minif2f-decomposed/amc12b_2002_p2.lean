import Mathlib
import Aesop

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

/-- What is the value of  $(3x - 2)(4x + 1) - (3x - 2)4x + 1$ when $x=4$?

$\mathrm{(A)}\ 0
\qquad\mathrm{(B)}\ 1
\qquad\mathrm{(C)}\ 10
\qquad\mathrm{(D)}\ 11
\qquad\mathrm{(E)}\ 12$ Show that it is \mathrm{(D)}\ 11.-/
theorem amc12b_2002_p2 (x : ℤ) (h₀ : x = 4) :
    (3 * x - 2) * (4 * x + 1) - (3 * x - 2) * (4 * x) + 1 = 11 := by
  have h₁ : (3 * x - 2) * (4 * x + 1) - (3 * x - 2) * (4 * x) + 1 = 3 * x - 1 := by
    have h₁₁ : (3 * x - 2) * (4 * x + 1) - (3 * x - 2) * (4 * x) + 1 = (3 * x - 2) * ((4 * x + 1) - (4 * x)) + 1 := by
      ring_nf
      <;>
      (try omega)
      <;>
      (try ring_nf at *)
      <;>
      (try omega)
    rw [h₁₁]
    have h₁₂ : (3 * x - 2) * ((4 * x + 1) - (4 * x)) + 1 = (3 * x - 2) * 1 + 1 := by
      have h₁₃ : (4 * x + 1 : ℤ) - (4 * x : ℤ) = 1 := by
        ring_nf at h₀ ⊢
        <;> omega
      rw [h₁₃]
      <;> ring_nf
      <;> omega
    rw [h₁₂]
    have h₁₃ : (3 * x - 2 : ℤ) * 1 + 1 = 3 * x - 1 := by
      ring_nf at h₀ ⊢
      <;> omega
    rw [h₁₃]
    <;> ring_nf at h₀ ⊢ <;> omega
  
  have h₂ : 3 * x - 1 = 11 := by
    rw [h₀]
    <;> norm_num
    <;> ring_nf at *
    <;> norm_num
    <;> omega
  
  have h₃ : (3 * x - 2) * (4 * x + 1) - (3 * x - 2) * (4 * x) + 1 = 11 := by
    rw [h₁]
    rw [h₂]
    <;> ring_nf at *
    <;> omega
  
  exact h₃
