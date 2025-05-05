import Mathlib
import Aesop

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

/-- Let $n$ be the number of integers $m$ in the range $1\le m\le 8$ such that $\text{gcd}(m,8)=1$. What is the remainder when $3^n$ is divided by $8$? Show that it is 1.-/
theorem mathd_numbertheory_461 (n : ℕ)
  (h₀ : n = Finset.card (Finset.filter (fun x => Nat.gcd x 8 = 1) (Finset.Icc 1 7))) :
  3 ^ n % 8 = 1 := by
  have h₁ : n = 4 := by
    -- We need to show that the number of integers between 1 and 7 that are relatively prime to 8 is 4.
    -- These integers are 1, 3, 5, and 7.
    rw [h₀]
    -- We use the fact that the number of integers between 1 and 7 that are relatively prime to 8 is 4.
    decide
    -- This is a direct computation that confirms the count of numbers relatively prime to 8 in the range.
    <;> rfl
  
  have h₂ : 3 ^ n % 8 = 1 := by
    -- Simplify the given hypotheses to show the cardinality of the set of numbers relatively prime to 8 in the range 1 to 7 is 4.
    simp_all only [Finset.card_filter, Finset.Icc, Nat.gcd_eq_gcd_ab, Nat.gcd_eq_right,
      Nat.gcd_eq_left]
    -- Normalize the numerical expressions to confirm the cardinality is 4.
    norm_num
    -- Use Aesop to solve the remaining goal, which involves computing 3^4 % 8.
    <;> aesop
  
  -- Given that n = 4, we can directly use this value to simplify the expression.
  simp_all
  -- Using the properties of powers and the modulo operation, we simplify the expression.
  <;> norm_num
  -- Finally, we use the `decide` tactic to confirm the equality.
  <;> decide

