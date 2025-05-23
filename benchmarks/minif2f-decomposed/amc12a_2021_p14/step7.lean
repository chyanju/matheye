theorem h₅ (k : ℕ) (hk : k ∈ Finset.Icc 1 20) (h₁ : 1 ≤ k) (h₂ : k ≤ 20) (h₃ : k ≥ 1) (h₄ : k ≤ 20) : logb (5 ^ k) (3 ^ k ^ 2) = (↑k : ℝ) * logb 5 3 :=
  by
  have h₅₁ : Real.logb ((5 : ℝ) ^ k) ((3 : ℝ) ^ (k ^ 2)) = Real.log ((3 : ℝ) ^ (k ^ 2)) / Real.log ((5 : ℝ) ^ k) := by sorry
  rw [h₅₁]
  have h₅₂ : Real.log ((3 : ℝ) ^ (k ^ 2)) = (k ^ 2 : ℝ) * Real.log 3 := by sorry
  have h₅₃ : Real.log ((5 : ℝ) ^ k) = (k : ℝ) * Real.log 5 := by sorry
  rw [h₅₂, h₅₃]
  have h₅₄ : Real.logb 5 3 = Real.log 3 / Real.log 5 := by
    rw [Real.logb] <;> simp [Real.log_rpow] <;> field_simp <;> ring
  have h₅₅ : (k ^ 2 : ℝ) * Real.log 3 / ((k : ℝ) * Real.log 5) = (k : ℝ) * (Real.log 3 / Real.log 5) := by sorry
  have h₅₄ : Real.logb 5 3 = Real.log 3 / Real.log 5 := by sorry
have h₅ : Real.logb ((5 : ℝ) ^ k) ((3 : ℝ) ^ (k ^ 2)) = (k : ℝ) * Real.logb 5 3 :=
  by
  have h₅₁ : Real.logb ((5 : ℝ) ^ k) ((3 : ℝ) ^ (k ^ 2)) = Real.log ((3 : ℝ) ^ (k ^ 2)) / Real.log ((5 : ℝ) ^ k) := by sorry
  rw [h₅₁]
  have h₅₂ : Real.log ((3 : ℝ) ^ (k ^ 2)) = (k ^ 2 : ℝ) * Real.log 3 := by sorry
  have h₅₃ : Real.log ((5 : ℝ) ^ k) = (k : ℝ) * Real.log 5 := by sorry
  rw [h₅₂, h₅₃]
  have h₅₄ : Real.logb 5 3 = Real.log 3 / Real.log 5 := by
    rw [Real.logb] <;> simp [Real.log_rpow] <;> field_simp <;> ring
  have h₅₅ : (k ^ 2 : ℝ) * Real.log 3 / ((k : ℝ) * Real.log 5) = (k : ℝ) * (Real.log 3 / Real.log 5) :=
    by
    have h₅₅₁ : (k : ℝ) ≠ 0 := by norm_num at hk ⊢ <;> omega
    field_simp [h₅₅₁] <;> ring <;> field_simp [h₅₅₁] <;> ring <;> norm_cast <;>
          simp_all [Nat.cast_pow, Nat.cast_mul, Nat.cast_add, Nat.cast_one] <;>
        field_simp [h₅₅₁] <;>
      ring
  rw [h₅₅, h₅₄] <;> ring <;> field_simp <;> ring