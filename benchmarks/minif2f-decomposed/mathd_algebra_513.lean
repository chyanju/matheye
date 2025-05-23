import Mathlib
import Aesop

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

/-- If $3a+2b=5$ and $a+b=2$, what is the ordered pair $(a,b)$ that satisfies both equations? Show that it is (1,1).-/
theorem mathd_algebra_513 (a b : ℝ) (h₀ : 3 * a + 2 * b = 5) (h₁ : a + b = 2) : a = 1 ∧ b = 1 := by
  have h₂ : a = 1 := by
    have h₂₁ : a = 1 := by
      -- Solve for `a` using the given equations.
      have h₂₂ : a + b = 2 := h₁
      have h₂₃ : 3 * a + 2 * b = 5 := h₀
      -- Express `b` in terms of `a` from the second equation.
      have h₂₄ : b = 2 - a := by linarith
      -- Substitute `b = 2 - a` into the first equation and solve for `a`.
      rw [h₂₄] at h₂₃
      linarith
    exact h₂₁
  
  have h₃ : b = 1 := by
    have h₃₁ : b = 1 := by
      -- Substitute `a = 1` into `a + b = 2` to find `b`.
      have h₃₂ : a + b = 2 := h₁
      rw [h₂] at h₃₂
      linarith
    exact h₃₁
  
  have h₄ : a = 1 ∧ b = 1 := by
    exact ⟨h₂, h₃⟩
  
  exact h₄
