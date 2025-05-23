import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₇₇ (m n : ℕ) (h₀ : m.gcd n = 6) (h₁ : m.lcm n = 126) (h₂ : m ≠ 0) (h₃ : n ≠ 0) (h₄ : m * n = 756) (h₅ : 6 ∣ m) (h₆ : 6 ∣ n) (h : ¬m + n ≥ 60) (h₇₁ : m + n < 60) (h₇₂ : m ≤ 59) (h₇₃ : n ≤ 59) (h₇₄ : m ≥ 6) (h₇₅ : n ≥ 6) (h₇₆ : m = 6 ∨ m = 12 ∨ m = 18 ∨ m = 24 ∨ m = 30 ∨ m = 36 ∨ m = 42 ∨ m = 48 ∨ m = 54) : n = 6 ∨ n = 12 ∨ n = 18 ∨ n = 24 ∨ n = 30 ∨ n = 36 ∨ n = 42 ∨ n = 48 ∨ n = 54 :=
  by
  have h₇₈ : n ≤ 59 := by sorry
  --  --  --  interval_cases n <;> norm_num at h₄ ⊢ <;> (try omega) <;>
      (try {
          have h₇₉ : m ≤ 59 := by omega
          interval_cases m <;> norm_num at h₄ ⊢ <;> omega
        }) <;>
    (try {omega
      })
  hole