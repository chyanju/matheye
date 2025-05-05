import Mathlib
import Aesop

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

/-- If a snack-size tin of peaches has $40$ calories and is $2\%$ of a person's daily caloric requirement, how many calories fulfill a person's daily caloric requirement? Show that it is 2000.-/
theorem mathd_algebra_24 (x : ℝ) (h₀ : x / 50 = 40) : x = 2000 := by
  have h₁ : x = 2000 := by
    have h₁ : x = 40 * 50 := by
      -- Multiply both sides of the equation by 50 to solve for x
      have h₁ : x / 50 = 40 := h₀
      have h₂ : x = 40 * 50 := by
        -- Eliminate the fraction by multiplying both sides by 50
        calc
          x = (x / 50) * 50 := by
            -- Simplify the expression to isolate x
            ring
          _ = 40 * 50 := by
            -- Substitute the given value of x / 50
            rw [h₀]
            <;> ring
      exact h₂
    -- Simplify the right-hand side to get the final result
    have h₂ : x = 2000 := by
      calc
        x = 40 * 50 := h₁
        _ = 2000 := by norm_num
    exact h₂
  exact h₁
