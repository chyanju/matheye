import Mathlib
import Aesop

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

/-- My father's age is $1222_{3}$, in base three to represent his three lower limbs -- two legs and a cane.  How old is he in base ten? Show that it is 53.-/
theorem mathd_numbertheory_85 : 1 * 3 ^ 3 + 2 * 3 ^ 2 + 2 * 3 + 2 = 53 := by
  have h1 : 3 ^ 3 = 27 := by norm_num
  have h2 : 3 ^ 2 = 9 := by norm_num
  have h3 : 1 * 3 ^ 3 = 27 := by norm_num [h1]
  have h4 : 2 * 3 ^ 2 = 18 := by norm_num [h2]
  have h5 : 2 * 3 = 6 := by norm_num
  have h6 : 1 * 3 ^ 3 + 2 * 3 ^ 2 = 45 := by norm_num [h3, h4]
  have h7 : 1 * 3 ^ 3 + 2 * 3 ^ 2 + 2 * 3 = 51 := by norm_num [h6, h5]
  have h8 : 1 * 3 ^ 3 + 2 * 3 ^ 2 + 2 * 3 + 2 = 53 := by norm_num [h7]
  exact h8
