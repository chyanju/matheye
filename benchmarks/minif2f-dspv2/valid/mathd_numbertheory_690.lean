import Mathlib
import Aesop

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

/-- Determine the smallest non-negative integer $a$ that satisfies the congruences: \begin{align*}
&a\equiv 2\pmod 3,\\
&a\equiv 4\pmod 5,\\
&a\equiv 6\pmod 7,\\
&a\equiv 8\pmod 9.
\end{align*} Show that it is 314.-/
theorem mathd_numbertheory_690 :
    IsLeast { a : ℕ | 0 < a ∧ a ≡ 2 [MOD 3] ∧ a ≡ 4 [MOD 5] ∧ a ≡ 6 [MOD 7] ∧ a ≡ 8 [MOD 9] } 314 := by
  -- Use the `refine'` tactic to construct the proof step by step.
  refine' ⟨by decide, fun a ⟨ha₁, ha₂, ha₃, ha₄, ha₅⟩ => _⟩
  -- Normalize the congruences using `ModEq` and `Nat.modEq_iff_dvd`.
  norm_num [ModEq, Nat.modEq_iff_dvd] at ha₂ ha₃ ha₄ ha₅
  -- Use the `omega` tactic to solve the system of linear congruences.
  omega

