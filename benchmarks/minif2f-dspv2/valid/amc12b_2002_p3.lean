import Mathlib
import Aesop

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

/-- For how many positive integers $n$ is $n^2 - 3n + 2$ a [[prime]] number?

$\mathrm{(A)}\ \text{none}
\qquad\mathrm{(B)}\ \text{one}
\qquad\mathrm{(C)}\ \text{two}
\qquad\mathrm{(D)}\ \text{more\ than\ two,\ but\ finitely\ many}
\qquad\mathrm{(E)}\ \text{infinitely\ many}$ Show that it is \mathrm{(B)}\ \text{one}.-/
theorem amc12b_2002_p3 (S : Finset ℕ)
  (h₀ : ∀ n : ℕ, n ∈ S ↔ 0 < n ∧ Nat.Prime (n ^ 2 + 2 - 3 * n)) :
  S.card = 1 := by
  have h₁ : S = {3} := by
    apply Finset.ext
    intro n
    simp only [h₀, Finset.mem_singleton]
    constructor
    -- Step 1: Show that if n satisfies the condition, then n must be 3.
    · intro h
      have h₁ := h.1
      have h₂ := h.2
      have h₃ : n ≤ 3 := by
        contrapose! h₂
        -- If n > 3, then n^2 + 2 - 3n = (n-1)(n-2) is not prime.
        have : n ^ 2 + 2 - 3 * n = (n - 1) * (n - 2) := by
          cases n with
          | zero => simp_all
          | succ n =>
            cases n with
            | zero => simp_all
            | succ n =>
              simp_all [Nat.mul_sub_left_distrib, Nat.mul_sub_right_distrib, Nat.pow_succ]
              <;> ring_nf
              <;> omega
        simp_all [Nat.prime_mul_iff]
        <;> omega
      interval_cases n <;> simp_all [Nat.Prime]
    -- Step 2: Show that if n is 3, then it satisfies the condition.
    · intro h
      rw [h]
      norm_num
      <;> decide
  have h₂ : S.card = 1 := by
    -- Simplify the given condition and the goal using the provided hypothesis.
    simp_all only [Finset.card_singleton, eq_self_iff_true, and_true]
    -- Verify the solution by reflexivity.
    <;> rfl
  
  -- We have already established that S = {3} and S.card = 1 in the previous steps.
  -- Now we need to confirm that S.card = 1.
  simpa [h₁, h₂] using h₂

