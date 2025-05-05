import Mathlib
import Aesop

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

/-- What is the remainder when $2000+2001+2002+2003+2004+2005+2006$ is divided by $7$? Show that it is 0.-/
theorem mathd_numbertheory_345 : (2000 + 2001 + 2002 + 2003 + 2004 + 2005 + 2006) % 7 = 0 := by
  have h₁ : (2000 + 2001 + 2002 + 2003 + 2004 + 2005 + 2006) % 7 = 0 := by
    norm_num [Nat.add_mod, Nat.mul_mod, Nat.mod_mod, Nat.mod_eq_of_lt, Nat.mod_self,
      Nat.zero_add, Nat.add_assoc]
    <;>
    rfl
  exact h₁
