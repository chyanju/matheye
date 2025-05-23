import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₈ (n : ℕ) (h₀ : 3 * n % 11 = 2) (h₂ : 3 * (n % 11) % 11 = 2) : n % 11 = 0 ∨
    n % 11 = 1 ∨
      n % 11 = 2 ∨
        n % 11 = 3 ∨ n % 11 = 4 ∨ n % 11 = 5 ∨ n % 11 = 6 ∨ n % 11 = 7 ∨ n % 11 = 8 ∨ n % 11 = 9 ∨ n % 11 = 10 :=
  --  by omega
  hole