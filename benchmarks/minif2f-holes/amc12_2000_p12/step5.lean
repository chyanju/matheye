import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₄ (a m c : ℕ) (h₀ : a + m + c = 12) (h₁ : a ≤ 12) (h₂ : m ≤ 12) (h₃ : c ≤ 12) : a * m * c + a * m + m * c + a * c ≤ 112 :=
  by
  have h₅ : a ≤ 12 := by sorry
  have h₆ : m ≤ 12 := by sorry
  have h₇ : c ≤ 12 := by sorry
  --  --  --  --  interval_cases a <;> interval_cases m <;> interval_cases c <;> norm_num at h₀ ⊢ <;> (try omega) <;>
          (try nlinarith) <;>
        (try ring_nf at h₀ ⊢ <;> omega) <;>
      (try norm_num at h₀ ⊢ <;> nlinarith) <;>
    (try ring_nf at h₀ ⊢ <;> omega)
  hole