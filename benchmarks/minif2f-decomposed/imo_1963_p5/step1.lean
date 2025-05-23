theorem imo_1963_p5  : cos (π / 7) - cos (2 * π / 7) + cos (3 * π / 7) = 1 / 2 :=
  by
  have h1 :
    2 * Real.sin (Real.pi / 7) * (Real.cos (Real.pi / 7) - Real.cos (2 * Real.pi / 7) + Real.cos (3 * Real.pi / 7)) =
      Real.sin (Real.pi / 7) := by sorry
  have h2 : Real.sin (Real.pi / 7) > 0 := by sorry
  have h3 : Real.cos (Real.pi / 7) - Real.cos (2 * Real.pi / 7) + Real.cos (3 * Real.pi / 7) = 1 / 2 := by sorry
  apply h3