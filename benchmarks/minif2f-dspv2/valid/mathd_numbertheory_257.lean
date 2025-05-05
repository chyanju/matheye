import Mathlib
import Aesop

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

/-- Cards are numbered from 1 to 100. One card is removed and the values on the other 99 are added. The resulting sum is a multiple of 77. What number was on the card that was removed? Show that it is 45.-/
theorem mathd_numbertheory_257 (x : ℕ) (h₀ : 1 ≤ x ∧ x ≤ 100)
    (h₁ : 77 ∣ (∑ k in Finset.range 101, k) - x) : x = 45 := by
  have sum_to_100 : ∑ k in Finset.range 101, k = 5050 := by
    -- We need to show that the sum of the first 100 natural numbers is 5050.
    have : ∑ k in Finset.range 101, k = 5050 := by
      -- Use the formula for the sum of the first n natural numbers: ∑ k in Finset.range (n+1), k = n * (n + 1) / 2
      simp [Finset.sum_range_succ, mul_comm, Nat.mul_div_cancel_left, Nat.add_assoc, Nat.add_comm]
    -- Now we use the fact that the sum is 5050 to simplify the divisibility condition.
    simpa [this] using h₁
  
  have sum_remaining : (∑ k in Finset.range 101, k) - x = 5050 - x := by
    simp [sum_to_100]
    <;> omega
  
  have h₂ : 77 ∣ (5050 - x) := by
    -- Use the given conditions to show that 77 divides the sum of numbers from 1 to 100 minus x
    simpa [Finset.sum_range_succ, sum_to_100, sum_remaining] using h₁
  
  have h₃ : 5050 % 77 = 45 := by
    norm_num [Finset.sum_range_succ, Nat.dvd_iff_mod_eq_zero, Nat.mod_eq_of_lt] at h₁ h₂
    <;> omega
  
  have h₄ : x ≡ 45 [MOD 77] := by
    -- Simplify the congruence using the given divisibility condition
    simp_all [Nat.ModEq, Nat.modEq_iff_dvd]
    -- Since 5050 % 77 = 45, we have 5050 ≡ 45 [MOD 77]
    -- Therefore, 5050 - x ≡ 0 [MOD 77] implies x ≡ 45 [MOD 77]
    <;> omega
  
  have h₅ : x = 45 := by
    -- Extract the possibility that x is equal to 45 from the given conditions.
    have := h₄
    simp only [Nat.ModEq, Nat.mod_eq_of_lt] at this
    omega
  
  -- Since we have already derived that x = 45, we can directly use this result.
  simp_all

