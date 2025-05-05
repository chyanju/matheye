import Mathlib
import Aesop

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

/-- What is the modulo $6$ remainder of the sum $1+2+3+4+\dots+98+99+100?$ Show that it is 4.-/
theorem mathd_numbertheory_237 : (∑ k in Finset.range 101, k) % 6 = 4 := by
  have h : (∑ k in Finset.range 101, k) = 5050 := by
    rfl
  
  have h₁ : (∑ k in Finset.range 101, k) % 6 = 4 := by
    rw [h]
    <;> norm_num
    <;> rfl
  
  apply h₁
