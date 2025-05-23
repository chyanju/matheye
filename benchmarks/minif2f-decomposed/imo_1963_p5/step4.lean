theorem h1₁₁  : sin (2 * π / 7) = 2 * sin (π / 7) * cos (π / 7) :=
  by
  have h1₁₂ : Real.sin (2 * Real.pi / 7) = Real.sin (2 * (Real.pi / 7)) := by sorry
  rw [h1₁₂]
  have h1₁₃ : Real.sin (2 * (Real.pi / 7)) = 2 * Real.sin (Real.pi / 7) * Real.cos (Real.pi / 7) := by sorry
  rw [h1₁₃] <;> ring