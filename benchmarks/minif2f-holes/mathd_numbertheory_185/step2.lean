import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat
macro "hole" : tactic => `(tactic| admit)
theorem h₁ (n : ℕ) (h₀ : n % 5 = 3) : 2 * n % 5 = 2 * (n % 5) % 5 := by
  --  rw [← Nat.mod_add_div n 5]
  --  simp [Nat.mul_mod, Nat.add_mod, Nat.mod_mod, Nat.mod_self, zero_add, Nat.mul_assoc, Nat.mul_comm,
  --            Nat.mul_left_comm] <;>
          ring_nf at * <;>
        norm_num at * <;>
      simp [h₀, Nat.mul_mod, Nat.add_mod, Nat.mod_mod, Nat.mod_self, zero_add, Nat.mul_assoc, Nat.mul_comm,
        Nat.mul_left_comm] <;>
    omega
  hole