theorem h_main  : {x ∈ Finset.Icc 15 85 | 20 ∣ x} = {20, 40, 60, 80} :=
  by
  apply Finset.ext
  intro x
  simp only [Finset.mem_filter, Finset.mem_Icc, Finset.mem_insert, Finset.mem_singleton]
  constructor
  · intro h
    have h₁ : 15 ≤ x ∧ x ≤ 85 := by sorry
    have h₂ : 20 ∣ x := by sorry
    have h₃ : x = 20 ∨ x = 40 ∨ x = 60 ∨ x = 80 := by sorry
    tauto
  · intro h
    have h₁ : x = 20 ∨ x = 40 ∨ x = 60 ∨ x = 80 := by sorry
    have h₂ : 15 ≤ x ∧ x ≤ 85 ∧ 20 ∣ x := by sorry
    tauto