import Mathlib
import Aesop

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

/-- Find $9^{-1} \pmod{100}$, as a residue modulo 100.  (Give an answer between 0 and 99, inclusive.) Show that it is 89.-/
theorem mathd_numbertheory_34 (x : ℕ) (h₀ : x < 100) (h₁ : x * 9 % 100 = 1) : x = 89 := by
  have h₂ : x = 89 := by
    interval_cases x <;> norm_num at h₁ ⊢ <;>
    (try omega) <;>
    (try contradiction) <;>
    (try ring_nf at h₁ ⊢) <;>
    (try norm_num at h₁ ⊢) <;>
    (try omega)
    <;>
    (try
      {
        omega
      })
    <;>
    (try
      {
        norm_num at h₁ ⊢
        <;> omega
      })
    <;>
    (try
      {
        ring_nf at h₁ ⊢
        <;> norm_num at h₁ ⊢
        <;> omega
      })
    <;>
    (try
      {
        omega
      })
  exact h₂
