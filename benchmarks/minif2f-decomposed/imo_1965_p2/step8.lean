theorem h₁₁ (x y z : ℝ) (a : ℕ → ℝ) (h₀ : 0 < a 0 ∧ 0 < a 4 ∧ 0 < a 8) (h₁ : a 1 < 0 ∧ a 2 < 0) (h₂ : a 3 < 0 ∧ a 5 < 0) (h₃ : a 6 < 0 ∧ a 7 < 0) (h₄ : 0 < a 0 + a 1 + a 2) (h₅ : 0 < a 3 + a 4 + a 5) (h₆ : 0 < a 6 + a 7 + a 8) (h₇ : a 0 * x + a 1 * y + a 2 * z = 0) (h₈ : a 3 * x + a 4 * y + a 5 * z = 0) (h₉ : a 6 * x + a 7 * y + a 8 * z = 0) (h₁₀ : x = 0) : y = 0 :=
  by
  have h₁₁₁ : a 1 * y + a 2 * z = 0 := by sorry
  have h₁₁₂ : a 4 * y + a 5 * z = 0 := by sorry
  have h₁₁₃ : a 7 * y + a 8 * z = 0 := by sorry
  by_contra hy
  have h₁₁₄ : y > 0 ∨ y < 0 := by sorry
  cases' h₁₁₄ with hy_pos hy_neg
  · by_cases hz : z ≤ y
    ·
      have h₁₁₅ : a 3 * 0 + a 4 * y + a 5 * z ≥ (a 3 + a 4 + a 5) * y := by sorry
      have h₁₁₉ : (a 3 + a 4 + a 5) * y > 0 :=
        by
        have h₁₂₀ : a 3 + a 4 + a 5 > 0 := h₅
        nlinarith
      nlinarith [h₁₁₂]
    ·
      have h₁₁₅ : a 6 * 0 + a 7 * y + a 8 * z ≥ (a 6 + a 7 + a 8) * z := by sorry
      have h₁₁₉ : (a 6 + a 7 + a 8) * z > 0 :=
        by
        have h₁₂₀ : a 6 + a 7 + a 8 > 0 := h₆
        have h₁₂₁ : z > y := by linarith
        have h₁₂₂ : z > 0 := by linarith
        nlinarith
      nlinarith [h₁₁₃]
  · by_cases hz : z ≥ y
    ·
      have h₁₁₅ : a 3 * 0 + a 4 * y + a 5 * z ≤ (a 3 + a 4 + a 5) * y := by sorry
      have h₁₁₉ : (a 3 + a 4 + a 5) * y < 0 :=
        by
        have h₁₂₀ : a 3 + a 4 + a 5 > 0 := h₅
        nlinarith
      nlinarith [h₁₁₂]
    ·
      have h₁₁₅ : a 6 * 0 + a 7 * y + a 8 * z ≤ (a 6 + a 7 + a 8) * z := by sorry
      have h₁₁₉ : (a 6 + a 7 + a 8) * z < 0 :=
        by
        have h₁₂₀ : a 6 + a 7 + a 8 > 0 := h₆
        have h₁₂₁ : z < y := by linarith
        have h₁₂₂ : z < 0 := by linarith
        nlinarith
      have h₁₁₉ : (a 3 + a 4 + a 5) * y > 0 := by sorry
have h₁₁ : y = 0 :=
  by
  have h₁₁₁ : a 1 * y + a 2 * z = 0 := by sorry
  have h₁₁₂ : a 4 * y + a 5 * z = 0 := by sorry
  have h₁₁₃ : a 7 * y + a 8 * z = 0 := by sorry
  by_contra hy
  have h₁₁₄ : y > 0 ∨ y < 0 := by sorry
  cases' h₁₁₄ with hy_pos hy_neg
  · by_cases hz : z ≤ y
    ·
      have h₁₁₅ : a 3 * 0 + a 4 * y + a 5 * z ≥ (a 3 + a 4 + a 5) * y := by sorry
      have h₁₁₉ : (a 3 + a 4 + a 5) * y > 0 :=
        by
        have h₁₂₀ : a 3 + a 4 + a 5 > 0 := h₅
        nlinarith
      nlinarith [h₁₁₂]
    ·
      have h₁₁₅ : a 6 * 0 + a 7 * y + a 8 * z ≥ (a 6 + a 7 + a 8) * z :=
        by
        have h₁₁₆ : a 6 * (0 : ℝ) ≥ a 6 * z := by
          have h₁₁₇ : a 6 < 0 := h₃.1
          nlinarith
        have h₁₁₈ : a 7 * y ≥ a 7 * z := by
          have h₁₁₉ : a 7 < 0 := h₃.2
          nlinarith
        nlinarith [h₀.1, h₀.2.1, h₀.2.2, h₁.1, h₁.2, h₂.1, h₂.2, h₃.1, h₃.2]
      have h₁₁₉ : (a 6 + a 7 + a 8) * z > 0 :=
        by
        have h₁₂₀ : a 6 + a 7 + a 8 > 0 := h₆
        have h₁₂₁ : z > y := by linarith
        have h₁₂₂ : z > 0 := by linarith
        nlinarith
      nlinarith [h₁₁₃]
  · by_cases hz : z ≥ y
    ·
      have h₁₁₅ : a 3 * 0 + a 4 * y + a 5 * z ≤ (a 3 + a 4 + a 5) * y :=
        by
        have h₁₁₆ : a 3 * (0 : ℝ) ≤ a 3 * y := by
          have h₁₁₇ : a 3 < 0 := h₂.1
          nlinarith
        have h₁₁₈ : a 5 * z ≤ a 5 * y := by
          have h₁₁₉ : a 5 < 0 := h₂.2
          nlinarith
        nlinarith [h₀.1, h₀.2.1, h₀.2.2, h₁.1, h₁.2, h₂.1, h₂.2, h₃.1, h₃.2]
      have h₁₁₉ : (a 3 + a 4 + a 5) * y < 0 :=
        by
        have h₁₂₀ : a 3 + a 4 + a 5 > 0 := h₅
        nlinarith
      nlinarith [h₁₁₂]
    ·
      have h₁₁₅ : a 6 * 0 + a 7 * y + a 8 * z ≤ (a 6 + a 7 + a 8) * z :=
        by
        have h₁₁₆ : a 6 * (0 : ℝ) ≤ a 6 * z := by
          have h₁₁₇ : a 6 < 0 := h₃.1
          nlinarith
        have h₁₁₈ : a 7 * y ≤ a 7 * z := by
          have h₁₁₉ : a 7 < 0 := h₃.2
          nlinarith
        nlinarith [h₀.1, h₀.2.1, h₀.2.2, h₁.1, h₁.2, h₂.1, h₂.2, h₃.1, h₃.2]
      have h₁₁₉ : (a 6 + a 7 + a 8) * z < 0 :=
        by
        have h₁₂₀ : a 6 + a 7 + a 8 > 0 := h₆
        have h₁₂₁ : z < y := by linarith
        have h₁₂₂ : z < 0 := by linarith
        nlinarith
      have h₁₁₉ : (a 6 + a 7 + a 8) * z > 0 := by sorry
have h₁₁ : y = 0 :=
  by
  have h₁₁₁ : a 1 * y + a 2 * z = 0 := by sorry
  have h₁₁₂ : a 4 * y + a 5 * z = 0 := by sorry
  have h₁₁₃ : a 7 * y + a 8 * z = 0 := by sorry
  by_contra hy
  have h₁₁₄ : y > 0 ∨ y < 0 := by sorry
  cases' h₁₁₄ with hy_pos hy_neg
  · by_cases hz : z ≤ y
    ·
      have h₁₁₅ : a 3 * 0 + a 4 * y + a 5 * z ≥ (a 3 + a 4 + a 5) * y := by sorry
      have h₁₁₉ : (a 3 + a 4 + a 5) * y > 0 :=
        by
        have h₁₂₀ : a 3 + a 4 + a 5 > 0 := h₅
        nlinarith
      nlinarith [h₁₁₂]
    ·
      have h₁₁₅ : a 6 * 0 + a 7 * y + a 8 * z ≥ (a 6 + a 7 + a 8) * z := by sorry
      have h₁₁₉ : (a 6 + a 7 + a 8) * z > 0 :=
        by
        have h₁₂₀ : a 6 + a 7 + a 8 > 0 := h₆
        have h₁₂₁ : z > y := by linarith
        have h₁₂₂ : z > 0 := by linarith
        nlinarith
      nlinarith [h₁₁₃]
  · by_cases hz : z ≥ y
    ·
      have h₁₁₅ : a 3 * 0 + a 4 * y + a 5 * z ≤ (a 3 + a 4 + a 5) * y :=
        by
        have h₁₁₆ : a 3 * (0 : ℝ) ≤ a 3 * y := by
          have h₁₁₇ : a 3 < 0 := h₂.1
          nlinarith
        have h₁₁₈ : a 5 * z ≤ a 5 * y := by
          have h₁₁₉ : a 5 < 0 := h₂.2
          nlinarith
        nlinarith [h₀.1, h₀.2.1, h₀.2.2, h₁.1, h₁.2, h₂.1, h₂.2, h₃.1, h₃.2]
      have h₁₁₉ : (a 3 + a 4 + a 5) * y < 0 :=
        by
        have h₁₂₀ : a 3 + a 4 + a 5 > 0 := h₅
        nlinarith
      nlinarith [h₁₁₂]
    ·
      have h₁₁₅ : a 6 * 0 + a 7 * y + a 8 * z ≤ (a 6 + a 7 + a 8) * z :=
        by
        have h₁₁₆ : a 6 * (0 : ℝ) ≤ a 6 * z := by
          have h₁₁₇ : a 6 < 0 := h₃.1
          nlinarith
        have h₁₁₈ : a 7 * y ≤ a 7 * z := by
          have h₁₁₉ : a 7 < 0 := h₃.2
          nlinarith
        nlinarith [h₀.1, h₀.2.1, h₀.2.2, h₁.1, h₁.2, h₂.1, h₂.2, h₃.1, h₃.2]
      have h₁₁₉ : (a 6 + a 7 + a 8) * z < 0 :=
        by
        have h₁₂₀ : a 6 + a 7 + a 8 > 0 := h₆
        have h₁₂₁ : z < y := by linarith
        have h₁₂₂ : z < 0 := by linarith
        nlinarith
      have h₁₁₉ : (a 3 + a 4 + a 5) * y > 0 := by sorry
have h₁₁ : y = 0 :=
  by
  have h₁₁₁ : a 1 * y + a 2 * z = 0 := by sorry
  have h₁₁₂ : a 4 * y + a 5 * z = 0 := by sorry
  have h₁₁₃ : a 7 * y + a 8 * z = 0 := by sorry
  by_contra hy
  have h₁₁₄ : y > 0 ∨ y < 0 := by sorry
  cases' h₁₁₄ with hy_pos hy_neg
  · by_cases hz : z ≤ y
    ·
      have h₁₁₅ : a 3 * 0 + a 4 * y + a 5 * z ≥ (a 3 + a 4 + a 5) * y := by sorry
      have h₁₁₉ : (a 3 + a 4 + a 5) * y > 0 :=
        by
        have h₁₂₀ : a 3 + a 4 + a 5 > 0 := h₅
        nlinarith
      nlinarith [h₁₁₂]
    ·
      have h₁₁₅ : a 6 * 0 + a 7 * y + a 8 * z ≥ (a 6 + a 7 + a 8) * z :=
        by
        have h₁₁₆ : a 6 * (0 : ℝ) ≥ a 6 * z := by
          have h₁₁₇ : a 6 < 0 := h₃.1
          nlinarith
        have h₁₁₈ : a 7 * y ≥ a 7 * z := by
          have h₁₁₉ : a 7 < 0 := h₃.2
          nlinarith
        nlinarith [h₀.1, h₀.2.1, h₀.2.2, h₁.1, h₁.2, h₂.1, h₂.2, h₃.1, h₃.2]
      have h₁₁₉ : (a 6 + a 7 + a 8) * z > 0 :=
        by
        have h₁₂₀ : a 6 + a 7 + a 8 > 0 := h₆
        have h₁₂₁ : z > y := by linarith
        have h₁₂₂ : z > 0 := by linarith
        nlinarith
      nlinarith [h₁₁₃]
  · by_cases hz : z ≥ y
    ·
      have h₁₁₅ : a 3 * 0 + a 4 * y + a 5 * z ≤ (a 3 + a 4 + a 5) * y :=
        by
        have h₁₁₆ : a 3 * (0 : ℝ) ≤ a 3 * y := by
          have h₁₁₇ : a 3 < 0 := h₂.1
          nlinarith
        have h₁₁₈ : a 5 * z ≤ a 5 * y := by
          have h₁₁₉ : a 5 < 0 := h₂.2
          nlinarith
        nlinarith [h₀.1, h₀.2.1, h₀.2.2, h₁.1, h₁.2, h₂.1, h₂.2, h₃.1, h₃.2]
      have h₁₁₉ : (a 3 + a 4 + a 5) * y < 0 :=
        by
        have h₁₂₀ : a 3 + a 4 + a 5 > 0 := h₅
        nlinarith
      nlinarith [h₁₁₂]
    ·
      have h₁₁₅ : a 6 * 0 + a 7 * y + a 8 * z ≤ (a 6 + a 7 + a 8) * z :=
        by
        have h₁₁₆ : a 6 * (0 : ℝ) ≤ a 6 * z := by
          have h₁₁₇ : a 6 < 0 := h₃.1
          nlinarith
        have h₁₁₈ : a 7 * y ≤ a 7 * z := by
          have h₁₁₉ : a 7 < 0 := h₃.2
          nlinarith
        nlinarith [h₀.1, h₀.2.1, h₀.2.2, h₁.1, h₁.2, h₂.1, h₂.2, h₃.1, h₃.2]
      have h₁₁₉ : (a 6 + a 7 + a 8) * z < 0 :=
        by
        have h₁₂₀ : a 6 + a 7 + a 8 > 0 := h₆
        have h₁₂₁ : z < y := by linarith
        have h₁₂₂ : z < 0 := by linarith
        nlinarith
      have h₁₁₉ : (a 3 + a 4 + a 5) * y < 0 := by sorry
have h₁₁ : y = 0 :=
  by
  have h₁₁₁ : a 1 * y + a 2 * z = 0 := by sorry
  have h₁₁₂ : a 4 * y + a 5 * z = 0 := by sorry
  have h₁₁₃ : a 7 * y + a 8 * z = 0 := by sorry
  by_contra hy
  have h₁₁₄ : y > 0 ∨ y < 0 := by sorry
  cases' h₁₁₄ with hy_pos hy_neg
  · by_cases hz : z ≤ y
    ·
      have h₁₁₅ : a 3 * 0 + a 4 * y + a 5 * z ≥ (a 3 + a 4 + a 5) * y := by sorry
      have h₁₁₉ : (a 3 + a 4 + a 5) * y > 0 :=
        by
        have h₁₂₀ : a 3 + a 4 + a 5 > 0 := h₅
        nlinarith
      nlinarith [h₁₁₂]
    ·
      have h₁₁₅ : a 6 * 0 + a 7 * y + a 8 * z ≥ (a 6 + a 7 + a 8) * z := by sorry
      have h₁₁₉ : (a 6 + a 7 + a 8) * z > 0 :=
        by
        have h₁₂₀ : a 6 + a 7 + a 8 > 0 := h₆
        have h₁₂₁ : z > y := by linarith
        have h₁₂₂ : z > 0 := by linarith
        nlinarith
      nlinarith [h₁₁₃]
  · by_cases hz : z ≥ y
    ·
      have h₁₁₅ : a 3 * 0 + a 4 * y + a 5 * z ≤ (a 3 + a 4 + a 5) * y := by sorry
      have h₁₁₉ : (a 3 + a 4 + a 5) * y < 0 :=
        by
        have h₁₂₀ : a 3 + a 4 + a 5 > 0 := h₅
        nlinarith
      nlinarith [h₁₁₂]
    ·
      have h₁₁₅ : a 6 * 0 + a 7 * y + a 8 * z ≤ (a 6 + a 7 + a 8) * z :=
        by
        have h₁₁₆ : a 6 * (0 : ℝ) ≤ a 6 * z := by
          have h₁₁₇ : a 6 < 0 := h₃.1
          nlinarith
        have h₁₁₈ : a 7 * y ≤ a 7 * z := by
          have h₁₁₉ : a 7 < 0 := h₃.2
          nlinarith
        nlinarith [h₀.1, h₀.2.1, h₀.2.2, h₁.1, h₁.2, h₂.1, h₂.2, h₃.1, h₃.2]
      have h₁₁₉ : (a 6 + a 7 + a 8) * z < 0 :=
        by
        have h₁₂₀ : a 6 + a 7 + a 8 > 0 := h₆
        have h₁₂₁ : z < y := by linarith
        have h₁₂₂ : z < 0 := by linarith
        nlinarith
      have h₁₁₉ : (a 3 + a 4 + a 5) * y > 0 := by sorry
have h₁₁ : y = 0 :=
  by
  have h₁₁₁ : a 1 * y + a 2 * z = 0 := by sorry
  have h₁₁₂ : a 4 * y + a 5 * z = 0 := by sorry
  have h₁₁₃ : a 7 * y + a 8 * z = 0 := by sorry
  by_contra hy
  have h₁₁₄ : y > 0 ∨ y < 0 := by sorry
  cases' h₁₁₄ with hy_pos hy_neg
  · by_cases hz : z ≤ y
    ·
      have h₁₁₅ : a 3 * 0 + a 4 * y + a 5 * z ≥ (a 3 + a 4 + a 5) * y := by sorry
      have h₁₁₉ : (a 3 + a 4 + a 5) * y > 0 :=
        by
        have h₁₂₀ : a 3 + a 4 + a 5 > 0 := h₅
        nlinarith
      nlinarith [h₁₁₂]
    ·
      have h₁₁₅ : a 6 * 0 + a 7 * y + a 8 * z ≥ (a 6 + a 7 + a 8) * z :=
        by
        have h₁₁₆ : a 6 * (0 : ℝ) ≥ a 6 * z := by
          have h₁₁₇ : a 6 < 0 := h₃.1
          nlinarith
        have h₁₁₈ : a 7 * y ≥ a 7 * z := by
          have h₁₁₉ : a 7 < 0 := h₃.2
          nlinarith
        nlinarith [h₀.1, h₀.2.1, h₀.2.2, h₁.1, h₁.2, h₂.1, h₂.2, h₃.1, h₃.2]
      have h₁₁₉ : (a 6 + a 7 + a 8) * z > 0 :=
        by
        have h₁₂₀ : a 6 + a 7 + a 8 > 0 := h₆
        have h₁₂₁ : z > y := by linarith
        have h₁₂₂ : z > 0 := by linarith
        nlinarith
      nlinarith [h₁₁₃]
  · by_cases hz : z ≥ y
    ·
      have h₁₁₅ : a 3 * 0 + a 4 * y + a 5 * z ≤ (a 3 + a 4 + a 5) * y :=
        by
        have h₁₁₆ : a 3 * (0 : ℝ) ≤ a 3 * y := by
          have h₁₁₇ : a 3 < 0 := h₂.1
          nlinarith
        have h₁₁₈ : a 5 * z ≤ a 5 * y := by
          have h₁₁₉ : a 5 < 0 := h₂.2
          nlinarith
        nlinarith [h₀.1, h₀.2.1, h₀.2.2, h₁.1, h₁.2, h₂.1, h₂.2, h₃.1, h₃.2]
      have h₁₁₉ : (a 3 + a 4 + a 5) * y < 0 :=
        by
        have h₁₂₀ : a 3 + a 4 + a 5 > 0 := h₅
        nlinarith
      nlinarith [h₁₁₂]
    ·
      have h₁₁₅ : a 6 * 0 + a 7 * y + a 8 * z ≤ (a 6 + a 7 + a 8) * z :=
        by
        have h₁₁₆ : a 6 * (0 : ℝ) ≤ a 6 * z := by
          have h₁₁₇ : a 6 < 0 := h₃.1
          nlinarith
        have h₁₁₈ : a 7 * y ≤ a 7 * z := by
          have h₁₁₉ : a 7 < 0 := h₃.2
          nlinarith
        nlinarith [h₀.1, h₀.2.1, h₀.2.2, h₁.1, h₁.2, h₂.1, h₂.2, h₃.1, h₃.2]
      have h₁₁₉ : (a 6 + a 7 + a 8) * z < 0 :=
        by
        have h₁₂₀ : a 6 + a 7 + a 8 > 0 := h₆
        have h₁₂₁ : z < y := by linarith
        have h₁₂₂ : z < 0 := by linarith
        nlinarith
      have h₁₁₉ : (a 6 + a 7 + a 8) * z > 0 := by sorry
have h₁₁ : y = 0 :=
  by
  have h₁₁₁ : a 1 * y + a 2 * z = 0 := by sorry
  have h₁₁₂ : a 4 * y + a 5 * z = 0 := by sorry
  have h₁₁₃ : a 7 * y + a 8 * z = 0 := by sorry
  by_contra hy
  have h₁₁₄ : y > 0 ∨ y < 0 := by sorry
  cases' h₁₁₄ with hy_pos hy_neg
  · by_cases hz : z ≤ y
    ·
      have h₁₁₅ : a 3 * 0 + a 4 * y + a 5 * z ≥ (a 3 + a 4 + a 5) * y := by sorry
      have h₁₁₉ : (a 3 + a 4 + a 5) * y > 0 :=
        by
        have h₁₂₀ : a 3 + a 4 + a 5 > 0 := h₅
        nlinarith
      nlinarith [h₁₁₂]
    ·
      have h₁₁₅ : a 6 * 0 + a 7 * y + a 8 * z ≥ (a 6 + a 7 + a 8) * z := by sorry
      have h₁₁₉ : (a 6 + a 7 + a 8) * z > 0 :=
        by
        have h₁₂₀ : a 6 + a 7 + a 8 > 0 := h₆
        have h₁₂₁ : z > y := by linarith
        have h₁₂₂ : z > 0 := by linarith
        nlinarith
      nlinarith [h₁₁₃]
  · by_cases hz : z ≥ y
    ·
      have h₁₁₅ : a 3 * 0 + a 4 * y + a 5 * z ≤ (a 3 + a 4 + a 5) * y :=
        by
        have h₁₁₆ : a 3 * (0 : ℝ) ≤ a 3 * y := by
          have h₁₁₇ : a 3 < 0 := h₂.1
          nlinarith
        have h₁₁₈ : a 5 * z ≤ a 5 * y := by
          have h₁₁₉ : a 5 < 0 := h₂.2
          nlinarith
        nlinarith [h₀.1, h₀.2.1, h₀.2.2, h₁.1, h₁.2, h₂.1, h₂.2, h₃.1, h₃.2]
      have h₁₁₉ : (a 3 + a 4 + a 5) * y < 0 :=
        by
        have h₁₂₀ : a 3 + a 4 + a 5 > 0 := h₅
        nlinarith
      nlinarith [h₁₁₂]
    ·
      have h₁₁₅ : a 6 * 0 + a 7 * y + a 8 * z ≤ (a 6 + a 7 + a 8) * z :=
        by
        have h₁₁₆ : a 6 * (0 : ℝ) ≤ a 6 * z := by
          have h₁₁₇ : a 6 < 0 := h₃.1
          nlinarith
        have h₁₁₈ : a 7 * y ≤ a 7 * z := by
          have h₁₁₉ : a 7 < 0 := h₃.2
          nlinarith
        nlinarith [h₀.1, h₀.2.1, h₀.2.2, h₁.1, h₁.2, h₂.1, h₂.2, h₃.1, h₃.2]
      have h₁₁₉ : (a 6 + a 7 + a 8) * z < 0 :=
        by
        have h₁₂₀ : a 6 + a 7 + a 8 > 0 := h₆
        have h₁₂₁ : z < y := by linarith
        have h₁₂₂ : z < 0 := by linarith
        nlinarith
      have h₁₁₉ : (a 3 + a 4 + a 5) * y > 0 := by sorry
have h₁₁ : y = 0 :=
  by
  have h₁₁₁ : a 1 * y + a 2 * z = 0 := by sorry
  have h₁₁₂ : a 4 * y + a 5 * z = 0 := by sorry
  have h₁₁₃ : a 7 * y + a 8 * z = 0 := by sorry
  by_contra hy
  have h₁₁₄ : y > 0 ∨ y < 0 := by sorry
  cases' h₁₁₄ with hy_pos hy_neg
  · by_cases hz : z ≤ y
    ·
      have h₁₁₅ : a 3 * 0 + a 4 * y + a 5 * z ≥ (a 3 + a 4 + a 5) * y := by sorry
      have h₁₁₉ : (a 3 + a 4 + a 5) * y > 0 :=
        by
        have h₁₂₀ : a 3 + a 4 + a 5 > 0 := h₅
        nlinarith
      nlinarith [h₁₁₂]
    ·
      have h₁₁₅ : a 6 * 0 + a 7 * y + a 8 * z ≥ (a 6 + a 7 + a 8) * z :=
        by
        have h₁₁₆ : a 6 * (0 : ℝ) ≥ a 6 * z := by
          have h₁₁₇ : a 6 < 0 := h₃.1
          nlinarith
        have h₁₁₈ : a 7 * y ≥ a 7 * z := by
          have h₁₁₉ : a 7 < 0 := h₃.2
          nlinarith
        nlinarith [h₀.1, h₀.2.1, h₀.2.2, h₁.1, h₁.2, h₂.1, h₂.2, h₃.1, h₃.2]
      have h₁₁₉ : (a 6 + a 7 + a 8) * z > 0 :=
        by
        have h₁₂₀ : a 6 + a 7 + a 8 > 0 := h₆
        have h₁₂₁ : z > y := by linarith
        have h₁₂₂ : z > 0 := by linarith
        nlinarith
      nlinarith [h₁₁₃]
  · by_cases hz : z ≥ y
    ·
      have h₁₁₅ : a 3 * 0 + a 4 * y + a 5 * z ≤ (a 3 + a 4 + a 5) * y :=
        by
        have h₁₁₆ : a 3 * (0 : ℝ) ≤ a 3 * y := by
          have h₁₁₇ : a 3 < 0 := h₂.1
          nlinarith
        have h₁₁₈ : a 5 * z ≤ a 5 * y := by
          have h₁₁₉ : a 5 < 0 := h₂.2
          nlinarith
        nlinarith [h₀.1, h₀.2.1, h₀.2.2, h₁.1, h₁.2, h₂.1, h₂.2, h₃.1, h₃.2]
      have h₁₁₉ : (a 3 + a 4 + a 5) * y < 0 :=
        by
        have h₁₂₀ : a 3 + a 4 + a 5 > 0 := h₅
        nlinarith
      nlinarith [h₁₁₂]
    ·
      have h₁₁₅ : a 6 * 0 + a 7 * y + a 8 * z ≤ (a 6 + a 7 + a 8) * z :=
        by
        have h₁₁₆ : a 6 * (0 : ℝ) ≤ a 6 * z := by
          have h₁₁₇ : a 6 < 0 := h₃.1
          nlinarith
        have h₁₁₈ : a 7 * y ≤ a 7 * z := by
          have h₁₁₉ : a 7 < 0 := h₃.2
          nlinarith
        nlinarith [h₀.1, h₀.2.1, h₀.2.2, h₁.1, h₁.2, h₂.1, h₂.2, h₃.1, h₃.2]
      have h₁₁₉ : (a 6 + a 7 + a 8) * z < 0 :=
        by
        have h₁₂₀ : a 6 + a 7 + a 8 > 0 := h₆
        have h₁₂₁ : z < y := by linarith
        have h₁₂₂ : z < 0 := by linarith
        nlinarith
      have h₁₁₉ : (a 6 + a 7 + a 8) * z < 0 := by sorry
have h₁₁ : y = 0 :=
  by
  have h₁₁₁ : a 1 * y + a 2 * z = 0 := by sorry
  have h₁₁₂ : a 4 * y + a 5 * z = 0 := by sorry
  have h₁₁₃ : a 7 * y + a 8 * z = 0 := by sorry
  by_contra hy
  have h₁₁₄ : y > 0 ∨ y < 0 := by sorry
  cases' h₁₁₄ with hy_pos hy_neg
  · by_cases hz : z ≤ y
    ·
      have h₁₁₅ : a 3 * 0 + a 4 * y + a 5 * z ≥ (a 3 + a 4 + a 5) * y := by sorry
      have h₁₁₉ : (a 3 + a 4 + a 5) * y > 0 :=
        by
        have h₁₂₀ : a 3 + a 4 + a 5 > 0 := h₅
        nlinarith
      nlinarith [h₁₁₂]
    ·
      have h₁₁₅ : a 6 * 0 + a 7 * y + a 8 * z ≥ (a 6 + a 7 + a 8) * z := by sorry
      have h₁₁₉ : (a 6 + a 7 + a 8) * z > 0 :=
        by
        have h₁₂₀ : a 6 + a 7 + a 8 > 0 := h₆
        have h₁₂₁ : z > y := by linarith
        have h₁₂₂ : z > 0 := by linarith
        nlinarith
      nlinarith [h₁₁₃]
  · by_cases hz : z ≥ y
    ·
      have h₁₁₅ : a 3 * 0 + a 4 * y + a 5 * z ≤ (a 3 + a 4 + a 5) * y := by sorry
      have h₁₁₉ : (a 3 + a 4 + a 5) * y < 0 :=
        by
        have h₁₂₀ : a 3 + a 4 + a 5 > 0 := h₅
        nlinarith
      nlinarith [h₁₁₂]
    ·
      have h₁₁₅ : a 6 * 0 + a 7 * y + a 8 * z ≤ (a 6 + a 7 + a 8) * z := by sorry
      have h₁₁₉ : (a 6 + a 7 + a 8) * z < 0 :=
        by
        have h₁₂₀ : a 6 + a 7 + a 8 > 0 := h₆
        have h₁₂₁ : z < y := by linarith
        have h₁₂₂ : z < 0 := by linarith
        nlinarith
      have h₁₁₉ : (a 3 + a 4 + a 5) * y > 0 := by sorry
have h₁₁ : y = 0 :=
  by
  have h₁₁₁ : a 1 * y + a 2 * z = 0 := by sorry
  have h₁₁₂ : a 4 * y + a 5 * z = 0 := by sorry
  have h₁₁₃ : a 7 * y + a 8 * z = 0 := by sorry
  by_contra hy
  have h₁₁₄ : y > 0 ∨ y < 0 := by sorry
  cases' h₁₁₄ with hy_pos hy_neg
  · by_cases hz : z ≤ y
    ·
      have h₁₁₅ : a 3 * 0 + a 4 * y + a 5 * z ≥ (a 3 + a 4 + a 5) * y := by sorry
      have h₁₁₉ : (a 3 + a 4 + a 5) * y > 0 :=
        by
        have h₁₂₀ : a 3 + a 4 + a 5 > 0 := h₅
        nlinarith
      nlinarith [h₁₁₂]
    ·
      have h₁₁₅ : a 6 * 0 + a 7 * y + a 8 * z ≥ (a 6 + a 7 + a 8) * z :=
        by
        have h₁₁₆ : a 6 * (0 : ℝ) ≥ a 6 * z := by
          have h₁₁₇ : a 6 < 0 := h₃.1
          nlinarith
        have h₁₁₈ : a 7 * y ≥ a 7 * z := by
          have h₁₁₉ : a 7 < 0 := h₃.2
          nlinarith
        nlinarith [h₀.1, h₀.2.1, h₀.2.2, h₁.1, h₁.2, h₂.1, h₂.2, h₃.1, h₃.2]
      have h₁₁₉ : (a 6 + a 7 + a 8) * z > 0 :=
        by
        have h₁₂₀ : a 6 + a 7 + a 8 > 0 := h₆
        have h₁₂₁ : z > y := by linarith
        have h₁₂₂ : z > 0 := by linarith
        nlinarith
      nlinarith [h₁₁₃]
  · by_cases hz : z ≥ y
    ·
      have h₁₁₅ : a 3 * 0 + a 4 * y + a 5 * z ≤ (a 3 + a 4 + a 5) * y :=
        by
        have h₁₁₆ : a 3 * (0 : ℝ) ≤ a 3 * y := by
          have h₁₁₇ : a 3 < 0 := h₂.1
          nlinarith
        have h₁₁₈ : a 5 * z ≤ a 5 * y := by
          have h₁₁₉ : a 5 < 0 := h₂.2
          nlinarith
        nlinarith [h₀.1, h₀.2.1, h₀.2.2, h₁.1, h₁.2, h₂.1, h₂.2, h₃.1, h₃.2]
      have h₁₁₉ : (a 3 + a 4 + a 5) * y < 0 :=
        by
        have h₁₂₀ : a 3 + a 4 + a 5 > 0 := h₅
        nlinarith
      nlinarith [h₁₁₂]
    ·
      have h₁₁₅ : a 6 * 0 + a 7 * y + a 8 * z ≤ (a 6 + a 7 + a 8) * z :=
        by
        have h₁₁₆ : a 6 * (0 : ℝ) ≤ a 6 * z := by
          have h₁₁₇ : a 6 < 0 := h₃.1
          nlinarith
        have h₁₁₈ : a 7 * y ≤ a 7 * z := by
          have h₁₁₉ : a 7 < 0 := h₃.2
          nlinarith
        nlinarith [h₀.1, h₀.2.1, h₀.2.2, h₁.1, h₁.2, h₂.1, h₂.2, h₃.1, h₃.2]
      have h₁₁₉ : (a 6 + a 7 + a 8) * z < 0 :=
        by
        have h₁₂₀ : a 6 + a 7 + a 8 > 0 := h₆
        have h₁₂₁ : z < y := by linarith
        have h₁₂₂ : z < 0 := by linarith
        nlinarith
      have h₁₁₉ : (a 6 + a 7 + a 8) * z > 0 := by sorry
have h₁₁ : y = 0 :=
  by
  have h₁₁₁ : a 1 * y + a 2 * z = 0 := by sorry
  have h₁₁₂ : a 4 * y + a 5 * z = 0 := by sorry
  have h₁₁₃ : a 7 * y + a 8 * z = 0 := by sorry
  by_contra hy
  have h₁₁₄ : y > 0 ∨ y < 0 := by sorry
  cases' h₁₁₄ with hy_pos hy_neg
  · by_cases hz : z ≤ y
    ·
      have h₁₁₅ : a 3 * 0 + a 4 * y + a 5 * z ≥ (a 3 + a 4 + a 5) * y := by sorry
      have h₁₁₉ : (a 3 + a 4 + a 5) * y > 0 :=
        by
        have h₁₂₀ : a 3 + a 4 + a 5 > 0 := h₅
        nlinarith
      nlinarith [h₁₁₂]
    ·
      have h₁₁₅ : a 6 * 0 + a 7 * y + a 8 * z ≥ (a 6 + a 7 + a 8) * z := by sorry
      have h₁₁₉ : (a 6 + a 7 + a 8) * z > 0 :=
        by
        have h₁₂₀ : a 6 + a 7 + a 8 > 0 := h₆
        have h₁₂₁ : z > y := by linarith
        have h₁₂₂ : z > 0 := by linarith
        nlinarith
      nlinarith [h₁₁₃]
  · by_cases hz : z ≥ y
    ·
      have h₁₁₅ : a 3 * 0 + a 4 * y + a 5 * z ≤ (a 3 + a 4 + a 5) * y :=
        by
        have h₁₁₆ : a 3 * (0 : ℝ) ≤ a 3 * y := by
          have h₁₁₇ : a 3 < 0 := h₂.1
          nlinarith
        have h₁₁₈ : a 5 * z ≤ a 5 * y := by
          have h₁₁₉ : a 5 < 0 := h₂.2
          nlinarith
        nlinarith [h₀.1, h₀.2.1, h₀.2.2, h₁.1, h₁.2, h₂.1, h₂.2, h₃.1, h₃.2]
      have h₁₁₉ : (a 3 + a 4 + a 5) * y < 0 :=
        by
        have h₁₂₀ : a 3 + a 4 + a 5 > 0 := h₅
        nlinarith
      nlinarith [h₁₁₂]
    ·
      have h₁₁₅ : a 6 * 0 + a 7 * y + a 8 * z ≤ (a 6 + a 7 + a 8) * z :=
        by
        have h₁₁₆ : a 6 * (0 : ℝ) ≤ a 6 * z := by
          have h₁₁₇ : a 6 < 0 := h₃.1
          nlinarith
        have h₁₁₈ : a 7 * y ≤ a 7 * z := by
          have h₁₁₉ : a 7 < 0 := h₃.2
          nlinarith
        nlinarith [h₀.1, h₀.2.1, h₀.2.2, h₁.1, h₁.2, h₂.1, h₂.2, h₃.1, h₃.2]
      have h₁₁₉ : (a 6 + a 7 + a 8) * z < 0 :=
        by
        have h₁₂₀ : a 6 + a 7 + a 8 > 0 := h₆
        have h₁₂₁ : z < y := by linarith
        have h₁₂₂ : z < 0 := by linarith
        nlinarith
      have h₁₁₉ : (a 3 + a 4 + a 5) * y > 0 := by sorry
have h₁₁ : y = 0 :=
  by
  have h₁₁₁ : a 1 * y + a 2 * z = 0 := by sorry
  have h₁₁₂ : a 4 * y + a 5 * z = 0 := by sorry
  have h₁₁₃ : a 7 * y + a 8 * z = 0 := by sorry
  by_contra hy
  have h₁₁₄ : y > 0 ∨ y < 0 := by sorry
  cases' h₁₁₄ with hy_pos hy_neg
  · by_cases hz : z ≤ y
    ·
      have h₁₁₅ : a 3 * 0 + a 4 * y + a 5 * z ≥ (a 3 + a 4 + a 5) * y := by sorry
      have h₁₁₉ : (a 3 + a 4 + a 5) * y > 0 :=
        by
        have h₁₂₀ : a 3 + a 4 + a 5 > 0 := h₅
        nlinarith
      nlinarith [h₁₁₂]
    ·
      have h₁₁₅ : a 6 * 0 + a 7 * y + a 8 * z ≥ (a 6 + a 7 + a 8) * z :=
        by
        have h₁₁₆ : a 6 * (0 : ℝ) ≥ a 6 * z := by
          have h₁₁₇ : a 6 < 0 := h₃.1
          nlinarith
        have h₁₁₈ : a 7 * y ≥ a 7 * z := by
          have h₁₁₉ : a 7 < 0 := h₃.2
          nlinarith
        nlinarith [h₀.1, h₀.2.1, h₀.2.2, h₁.1, h₁.2, h₂.1, h₂.2, h₃.1, h₃.2]
      have h₁₁₉ : (a 6 + a 7 + a 8) * z > 0 :=
        by
        have h₁₂₀ : a 6 + a 7 + a 8 > 0 := h₆
        have h₁₂₁ : z > y := by linarith
        have h₁₂₂ : z > 0 := by linarith
        nlinarith
      nlinarith [h₁₁₃]
  · by_cases hz : z ≥ y
    ·
      have h₁₁₅ : a 3 * 0 + a 4 * y + a 5 * z ≤ (a 3 + a 4 + a 5) * y :=
        by
        have h₁₁₆ : a 3 * (0 : ℝ) ≤ a 3 * y := by
          have h₁₁₇ : a 3 < 0 := h₂.1
          nlinarith
        have h₁₁₈ : a 5 * z ≤ a 5 * y := by
          have h₁₁₉ : a 5 < 0 := h₂.2
          nlinarith
        nlinarith [h₀.1, h₀.2.1, h₀.2.2, h₁.1, h₁.2, h₂.1, h₂.2, h₃.1, h₃.2]
      have h₁₁₉ : (a 3 + a 4 + a 5) * y < 0 :=
        by
        have h₁₂₀ : a 3 + a 4 + a 5 > 0 := h₅
        nlinarith
      nlinarith [h₁₁₂]
    ·
      have h₁₁₅ : a 6 * 0 + a 7 * y + a 8 * z ≤ (a 6 + a 7 + a 8) * z :=
        by
        have h₁₁₆ : a 6 * (0 : ℝ) ≤ a 6 * z := by
          have h₁₁₇ : a 6 < 0 := h₃.1
          nlinarith
        have h₁₁₈ : a 7 * y ≤ a 7 * z := by
          have h₁₁₉ : a 7 < 0 := h₃.2
          nlinarith
        nlinarith [h₀.1, h₀.2.1, h₀.2.2, h₁.1, h₁.2, h₂.1, h₂.2, h₃.1, h₃.2]
      have h₁₁₉ : (a 6 + a 7 + a 8) * z < 0 :=
        by
        have h₁₂₀ : a 6 + a 7 + a 8 > 0 := h₆
        have h₁₂₁ : z < y := by linarith
        have h₁₂₂ : z < 0 := by linarith
        nlinarith
      have h₁₁₉ : (a 3 + a 4 + a 5) * y < 0 := by sorry
have h₁₁ : y = 0 :=
  by
  have h₁₁₁ : a 1 * y + a 2 * z = 0 := by sorry
  have h₁₁₂ : a 4 * y + a 5 * z = 0 := by sorry
  have h₁₁₃ : a 7 * y + a 8 * z = 0 := by sorry
  by_contra hy
  have h₁₁₄ : y > 0 ∨ y < 0 := by sorry
  cases' h₁₁₄ with hy_pos hy_neg
  · by_cases hz : z ≤ y
    ·
      have h₁₁₅ : a 3 * 0 + a 4 * y + a 5 * z ≥ (a 3 + a 4 + a 5) * y := by sorry
      have h₁₁₉ : (a 3 + a 4 + a 5) * y > 0 :=
        by
        have h₁₂₀ : a 3 + a 4 + a 5 > 0 := h₅
        nlinarith
      nlinarith [h₁₁₂]
    ·
      have h₁₁₅ : a 6 * 0 + a 7 * y + a 8 * z ≥ (a 6 + a 7 + a 8) * z := by sorry
      have h₁₁₉ : (a 6 + a 7 + a 8) * z > 0 :=
        by
        have h₁₂₀ : a 6 + a 7 + a 8 > 0 := h₆
        have h₁₂₁ : z > y := by linarith
        have h₁₂₂ : z > 0 := by linarith
        nlinarith
      nlinarith [h₁₁₃]
  · by_cases hz : z ≥ y
    ·
      have h₁₁₅ : a 3 * 0 + a 4 * y + a 5 * z ≤ (a 3 + a 4 + a 5) * y := by sorry
      have h₁₁₉ : (a 3 + a 4 + a 5) * y < 0 :=
        by
        have h₁₂₀ : a 3 + a 4 + a 5 > 0 := h₅
        nlinarith
      nlinarith [h₁₁₂]
    ·
      have h₁₁₅ : a 6 * 0 + a 7 * y + a 8 * z ≤ (a 6 + a 7 + a 8) * z :=
        by
        have h₁₁₆ : a 6 * (0 : ℝ) ≤ a 6 * z := by
          have h₁₁₇ : a 6 < 0 := h₃.1
          nlinarith
        have h₁₁₈ : a 7 * y ≤ a 7 * z := by
          have h₁₁₉ : a 7 < 0 := h₃.2
          nlinarith
        nlinarith [h₀.1, h₀.2.1, h₀.2.2, h₁.1, h₁.2, h₂.1, h₂.2, h₃.1, h₃.2]
      have h₁₁₉ : (a 6 + a 7 + a 8) * z < 0 :=
        by
        have h₁₂₀ : a 6 + a 7 + a 8 > 0 := h₆
        have h₁₂₁ : z < y := by linarith
        have h₁₂₂ : z < 0 := by linarith
        nlinarith
      have h₁₁₉ : (a 3 + a 4 + a 5) * y > 0 := by sorry
have h₁₁ : y = 0 :=
  by
  have h₁₁₁ : a 1 * y + a 2 * z = 0 := by sorry
  have h₁₁₂ : a 4 * y + a 5 * z = 0 := by sorry
  have h₁₁₃ : a 7 * y + a 8 * z = 0 := by sorry
  by_contra hy
  have h₁₁₄ : y > 0 ∨ y < 0 := by sorry
  cases' h₁₁₄ with hy_pos hy_neg
  · by_cases hz : z ≤ y
    ·
      have h₁₁₅ : a 3 * 0 + a 4 * y + a 5 * z ≥ (a 3 + a 4 + a 5) * y := by sorry
      have h₁₁₉ : (a 3 + a 4 + a 5) * y > 0 :=
        by
        have h₁₂₀ : a 3 + a 4 + a 5 > 0 := h₅
        nlinarith
      nlinarith [h₁₁₂]
    ·
      have h₁₁₅ : a 6 * 0 + a 7 * y + a 8 * z ≥ (a 6 + a 7 + a 8) * z :=
        by
        have h₁₁₆ : a 6 * (0 : ℝ) ≥ a 6 * z := by
          have h₁₁₇ : a 6 < 0 := h₃.1
          nlinarith
        have h₁₁₈ : a 7 * y ≥ a 7 * z := by
          have h₁₁₉ : a 7 < 0 := h₃.2
          nlinarith
        nlinarith [h₀.1, h₀.2.1, h₀.2.2, h₁.1, h₁.2, h₂.1, h₂.2, h₃.1, h₃.2]
      have h₁₁₉ : (a 6 + a 7 + a 8) * z > 0 :=
        by
        have h₁₂₀ : a 6 + a 7 + a 8 > 0 := h₆
        have h₁₂₁ : z > y := by linarith
        have h₁₂₂ : z > 0 := by linarith
        nlinarith
      nlinarith [h₁₁₃]
  · by_cases hz : z ≥ y
    ·
      have h₁₁₅ : a 3 * 0 + a 4 * y + a 5 * z ≤ (a 3 + a 4 + a 5) * y :=
        by
        have h₁₁₆ : a 3 * (0 : ℝ) ≤ a 3 * y := by
          have h₁₁₇ : a 3 < 0 := h₂.1
          nlinarith
        have h₁₁₈ : a 5 * z ≤ a 5 * y := by
          have h₁₁₉ : a 5 < 0 := h₂.2
          nlinarith
        nlinarith [h₀.1, h₀.2.1, h₀.2.2, h₁.1, h₁.2, h₂.1, h₂.2, h₃.1, h₃.2]
      have h₁₁₉ : (a 3 + a 4 + a 5) * y < 0 :=
        by
        have h₁₂₀ : a 3 + a 4 + a 5 > 0 := h₅
        nlinarith
      nlinarith [h₁₁₂]
    ·
      have h₁₁₅ : a 6 * 0 + a 7 * y + a 8 * z ≤ (a 6 + a 7 + a 8) * z :=
        by
        have h₁₁₆ : a 6 * (0 : ℝ) ≤ a 6 * z := by
          have h₁₁₇ : a 6 < 0 := h₃.1
          nlinarith
        have h₁₁₈ : a 7 * y ≤ a 7 * z := by
          have h₁₁₉ : a 7 < 0 := h₃.2
          nlinarith
        nlinarith [h₀.1, h₀.2.1, h₀.2.2, h₁.1, h₁.2, h₂.1, h₂.2, h₃.1, h₃.2]
      have h₁₁₉ : (a 6 + a 7 + a 8) * z < 0 :=
        by
        have h₁₂₀ : a 6 + a 7 + a 8 > 0 := h₆
        have h₁₂₁ : z < y := by linarith
        have h₁₂₂ : z < 0 := by linarith
        nlinarith
      have h₁₁₉ : (a 6 + a 7 + a 8) * z > 0 := by sorry
have h₁₁ : y = 0 :=
  by
  have h₁₁₁ : a 1 * y + a 2 * z = 0 := by sorry
  have h₁₁₂ : a 4 * y + a 5 * z = 0 := by sorry
  have h₁₁₃ : a 7 * y + a 8 * z = 0 := by sorry
  by_contra hy
  have h₁₁₄ : y > 0 ∨ y < 0 := by sorry
  cases' h₁₁₄ with hy_pos hy_neg
  · by_cases hz : z ≤ y
    ·
      have h₁₁₅ : a 3 * 0 + a 4 * y + a 5 * z ≥ (a 3 + a 4 + a 5) * y := by sorry
      have h₁₁₉ : (a 3 + a 4 + a 5) * y > 0 :=
        by
        have h₁₂₀ : a 3 + a 4 + a 5 > 0 := h₅
        nlinarith
      nlinarith [h₁₁₂]
    ·
      have h₁₁₅ : a 6 * 0 + a 7 * y + a 8 * z ≥ (a 6 + a 7 + a 8) * z := by sorry
      have h₁₁₉ : (a 6 + a 7 + a 8) * z > 0 :=
        by
        have h₁₂₀ : a 6 + a 7 + a 8 > 0 := h₆
        have h₁₂₁ : z > y := by linarith
        have h₁₂₂ : z > 0 := by linarith
        nlinarith
      nlinarith [h₁₁₃]
  · by_cases hz : z ≥ y
    ·
      have h₁₁₅ : a 3 * 0 + a 4 * y + a 5 * z ≤ (a 3 + a 4 + a 5) * y :=
        by
        have h₁₁₆ : a 3 * (0 : ℝ) ≤ a 3 * y := by
          have h₁₁₇ : a 3 < 0 := h₂.1
          nlinarith
        have h₁₁₈ : a 5 * z ≤ a 5 * y := by
          have h₁₁₉ : a 5 < 0 := h₂.2
          nlinarith
        nlinarith [h₀.1, h₀.2.1, h₀.2.2, h₁.1, h₁.2, h₂.1, h₂.2, h₃.1, h₃.2]
      have h₁₁₉ : (a 3 + a 4 + a 5) * y < 0 :=
        by
        have h₁₂₀ : a 3 + a 4 + a 5 > 0 := h₅
        nlinarith
      nlinarith [h₁₁₂]
    ·
      have h₁₁₅ : a 6 * 0 + a 7 * y + a 8 * z ≤ (a 6 + a 7 + a 8) * z :=
        by
        have h₁₁₆ : a 6 * (0 : ℝ) ≤ a 6 * z := by
          have h₁₁₇ : a 6 < 0 := h₃.1
          nlinarith
        have h₁₁₈ : a 7 * y ≤ a 7 * z := by
          have h₁₁₉ : a 7 < 0 := h₃.2
          nlinarith
        nlinarith [h₀.1, h₀.2.1, h₀.2.2, h₁.1, h₁.2, h₂.1, h₂.2, h₃.1, h₃.2]
      have h₁₁₉ : (a 6 + a 7 + a 8) * z < 0 :=
        by
        have h₁₂₀ : a 6 + a 7 + a 8 > 0 := h₆
        have h₁₂₁ : z < y := by linarith
        have h₁₂₂ : z < 0 := by linarith
        nlinarith
      have h₁₁₉ : (a 3 + a 4 + a 5) * y > 0 := by sorry
have h₁₁ : y = 0 :=
  by
  have h₁₁₁ : a 1 * y + a 2 * z = 0 := by sorry
  have h₁₁₂ : a 4 * y + a 5 * z = 0 := by sorry
  have h₁₁₃ : a 7 * y + a 8 * z = 0 := by sorry
  by_contra hy
  have h₁₁₄ : y > 0 ∨ y < 0 := by sorry
  cases' h₁₁₄ with hy_pos hy_neg
  · by_cases hz : z ≤ y
    ·
      have h₁₁₅ : a 3 * 0 + a 4 * y + a 5 * z ≥ (a 3 + a 4 + a 5) * y := by sorry
      have h₁₁₉ : (a 3 + a 4 + a 5) * y > 0 :=
        by
        have h₁₂₀ : a 3 + a 4 + a 5 > 0 := h₅
        nlinarith
      nlinarith [h₁₁₂]
    ·
      have h₁₁₅ : a 6 * 0 + a 7 * y + a 8 * z ≥ (a 6 + a 7 + a 8) * z :=
        by
        have h₁₁₆ : a 6 * (0 : ℝ) ≥ a 6 * z := by
          have h₁₁₇ : a 6 < 0 := h₃.1
          nlinarith
        have h₁₁₈ : a 7 * y ≥ a 7 * z := by
          have h₁₁₉ : a 7 < 0 := h₃.2
          nlinarith
        nlinarith [h₀.1, h₀.2.1, h₀.2.2, h₁.1, h₁.2, h₂.1, h₂.2, h₃.1, h₃.2]
      have h₁₁₉ : (a 6 + a 7 + a 8) * z > 0 :=
        by
        have h₁₂₀ : a 6 + a 7 + a 8 > 0 := h₆
        have h₁₂₁ : z > y := by linarith
        have h₁₂₂ : z > 0 := by linarith
        nlinarith
      nlinarith [h₁₁₃]
  · by_cases hz : z ≥ y
    ·
      have h₁₁₅ : a 3 * 0 + a 4 * y + a 5 * z ≤ (a 3 + a 4 + a 5) * y :=
        by
        have h₁₁₆ : a 3 * (0 : ℝ) ≤ a 3 * y := by
          have h₁₁₇ : a 3 < 0 := h₂.1
          nlinarith
        have h₁₁₈ : a 5 * z ≤ a 5 * y := by
          have h₁₁₉ : a 5 < 0 := h₂.2
          nlinarith
        nlinarith [h₀.1, h₀.2.1, h₀.2.2, h₁.1, h₁.2, h₂.1, h₂.2, h₃.1, h₃.2]
      have h₁₁₉ : (a 3 + a 4 + a 5) * y < 0 :=
        by
        have h₁₂₀ : a 3 + a 4 + a 5 > 0 := h₅
        nlinarith
      nlinarith [h₁₁₂]
    ·
      have h₁₁₅ : a 6 * 0 + a 7 * y + a 8 * z ≤ (a 6 + a 7 + a 8) * z :=
        by
        have h₁₁₆ : a 6 * (0 : ℝ) ≤ a 6 * z := by
          have h₁₁₇ : a 6 < 0 := h₃.1
          nlinarith
        have h₁₁₈ : a 7 * y ≤ a 7 * z := by
          have h₁₁₉ : a 7 < 0 := h₃.2
          nlinarith
        nlinarith [h₀.1, h₀.2.1, h₀.2.2, h₁.1, h₁.2, h₂.1, h₂.2, h₃.1, h₃.2]
      have h₁₁₉ : (a 6 + a 7 + a 8) * z < 0 :=
        by
        have h₁₂₀ : a 6 + a 7 + a 8 > 0 := h₆
        have h₁₂₁ : z < y := by linarith
        have h₁₂₂ : z < 0 := by linarith
        nlinarith
      nlinarith [h₁₁₃]