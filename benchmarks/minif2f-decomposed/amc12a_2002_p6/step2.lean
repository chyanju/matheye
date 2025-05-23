theorem h₁ (n : ℕ) (h₀ : 0 < n) : ∃ m > n, ∃ p, m * p ≤ m + p :=
  by
  use n + 1
  constructor
  · omega
  · use 0 <;> simp [Nat.mul_zero, Nat.add_zero] <;> omega