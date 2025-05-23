import Mathlib
import Aesop

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

/-- For each plumbing repair job, Mr. Wrench charges $N$ dollars for coming out to the house plus $x$ dollars per hour that he works at the house. He charged $\$97$ for a one-hour repair job and $\$265$ for a five-hour repair job. What is his charge for a two-hour repair job? Show that it is \$ 139.-/
theorem mathd_algebra_160 (n x : ℝ) (h₀ : n + x = 97) (h₁ : n + 5 * x = 265) : n + 2 * x = 139 := by
  have h₂ : x = 42 := by
    have h₂₁ : 4 * x = 168 := by
      -- Subtract the first equation from the second to eliminate `n`
      linarith
    -- Solve for `x`
    linarith
  
  have h₃ : n = 55 := by
    -- Substitute `x = 42` into the first equation to find `n`
    have h₃₁ : n = 55 := by
      -- Use linear arithmetic to solve for `n`
      linarith
    -- The result follows directly from the calculation
    exact h₃₁
  
  have h₄ : n + 2 * x = 139 := by
    rw [h₃, h₂]
    <;> norm_num
  
  exact h₄
