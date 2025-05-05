import Mathlib
import Aesop

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

/-- A group of $N$ students, where $N < 50$, is on a field trip. If their teacher puts them in groups of 8, the last group has 5 students. If their teacher instead puts them in groups of 6, the last group has 3 students. What is the sum of all possible values of $N$? Show that it is 66.-/
theorem mathd_numbertheory_149 :
  (∑ k in Finset.filter (fun x => x % 8 = 5 ∧ x % 6 = 3) (Finset.range 50), k) = 66 := by
  -- Use the `decide` tactic to verify the sum of numbers satisfying the given conditions.
  decide
  <;> decide
  <;> decide

