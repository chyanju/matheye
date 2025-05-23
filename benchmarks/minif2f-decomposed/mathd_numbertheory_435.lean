import Mathlib
import Aesop

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

/-- Find the smallest positive integer $k$ such that, for every positive integer $n$, $6n+k$ is relatively prime to each of $6n+3$, $6n+2$, and $6n+1$. Show that it is 5.-/
theorem mathd_numbertheory_435 (k : ℕ) (h₀ : 0 < k) (h₁ : ∀ n, Nat.gcd (6 * n + k) (6 * n + 3) = 1)
    (h₂ : ∀ n, Nat.gcd (6 * n + k) (6 * n + 2) = 1) (h₃ : ∀ n, Nat.gcd (6 * n + k) (6 * n + 1) = 1) :
    5 ≤ k := by
  have h_main : 5 ≤ k := by
    by_contra h
    -- We will show that if k < 5, then one of the conditions h₁, h₂, h₃ fails for some n.
    have h₄ : k ≤ 4 := by linarith
    -- Consider the possible values of k: 1, 2, 3, 4
    interval_cases k <;> norm_num at h₁ h₂ h₃ ⊢ <;>
    (try omega) <;>
    (try {
      have h₅ := h₁ 1
      have h₆ := h₂ 1
      have h₇ := h₃ 1
      norm_num at h₅ h₆ h₇ <;> omega
    }) <;>
    (try {
      have h₅ := h₁ 0
      have h₆ := h₂ 0
      have h₇ := h₃ 0
      norm_num at h₅ h₆ h₇ <;> omega
    }) <;>
    (try {
      have h₅ := h₁ 2
      have h₆ := h₂ 2
      have h₇ := h₃ 2
      norm_num at h₅ h₆ h₇ <;> omega
    }) <;>
    (try {
      have h₅ := h₁ 3
      have h₆ := h₂ 3
      have h₇ := h₃ 3
      norm_num at h₅ h₆ h₇ <;> omega
    })
    <;>
    (try {
      have h₅ := h₁ 4
      have h₆ := h₂ 4
      have h₇ := h₃ 4
      norm_num at h₅ h₆ h₇ <;> omega
    })
    <;>
    (try {
      have h₅ := h₁ 5
      have h₆ := h₂ 5
      have h₇ := h₃ 5
      norm_num at h₅ h₆ h₇ <;> omega
    })
    <;>
    (try {
      have h₅ := h₁ 6
      have h₆ := h₂ 6
      have h₇ := h₃ 6
      norm_num at h₅ h₆ h₇ <;> omega
    })
    <;>
    (try {
      have h₅ := h₁ 7
      have h₆ := h₂ 7
      have h₇ := h₃ 7
      norm_num at h₅ h₆ h₇ <;> omega
    })
    <;>
    (try {
      have h₅ := h₁ 8
      have h₆ := h₂ 8
      have h₇ := h₃ 8
      norm_num at h₅ h₆ h₇ <;> omega
    })
    <;>
    (try {
      have h₅ := h₁ 9
      have h₆ := h₂ 9
      have h₇ := h₃ 9
      norm_num at h₅ h₆ h₇ <;> omega
    })
    <;>
    (try {
      have h₅ := h₁ 10
      have h₆ := h₂ 10
      have h₇ := h₃ 10
      norm_num at h₅ h₆ h₇ <;> omega
    })
  exact h_main
