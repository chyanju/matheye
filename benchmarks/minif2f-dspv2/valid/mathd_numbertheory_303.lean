import Mathlib
import Aesop

set_option maxHeartbeats 0

open BigOperators Real Nat Topology Rat

/-- If $n>1$ is an integer, the notation $a\equiv b\pmod{n}$ means that $(a-b)$ is a multiple of $n$. Find the sum of all possible values of $n$ such that both of the following are true: $171\equiv80\pmod{n}$ and $468\equiv13\pmod{n}$. Show that it is 111.-/
theorem mathd_numbertheory_303 (S : Finset ℕ)
  (h₀ : ∀ n : ℕ, n ∈ S ↔ 2 ≤ n ∧ 171 ≡ 80 [MOD n] ∧ 468 ≡ 13 [MOD n]) : (∑ k in S, k) = 111 := by
  have : S = {7, 13, 91} := by
    ext n
    simp only [Finset.mem_insert, Finset.mem_singleton, h₀, Nat.ModEq, Nat.ModEq]
    constructor
    · intro h
      match n with
      | 0 => contradiction
      | 1 => contradiction
      | 2 => contradiction
      | 7 => simp
      | 13 => simp
      | 91 => simp
      | 191 => contradiction
      | 291 => contradiction
      | 491 => contradiction
    · intro h
      match n with
      | 7 => simp
      | 13 => simp
      | 91 => simp
      | 191 => contradiction
      | 291 => contradiction
      | 491 => contradiction
  rw [this]
  norm_num

