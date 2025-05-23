theorem h1₁  : 2 * sin (π / 7) * cos (π / 7) = sin (2 * π / 7) :=
  by
  have h1₁₁ : Real.sin (2 * Real.pi / 7) = 2 * Real.sin (Real.pi / 7) * Real.cos (Real.pi / 7) := by sorry
  linarith