import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₁ (n : ℕ) (h₀ : 3 ≤ n) (h_base : 3! < 3 ^ (3 - 1)) (k : ℕ) (hk : 3 ≤ k) (hk_rec : k ! < k ^ (k - 1)) : (k + 1)! = (k + 1) * k ! := by -- simp [Nat.factorial] <;> ring <;> simp_all [Nat.factorial] <;> ring
  hole