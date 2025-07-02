## Angelic Statement
```Lean
rw [Finset.sum_sigma', Finset.univ_sigma_univ]
```
## Residual State
```Lean
1 goal

n : ℕ
hn : n > 1
won : Fin n → Fin n → Bool
hirrefl : ∀ (i : Fin n), won i i = false
hantisymm : ∀ (i j : Fin n), i ≠ j → (won i j = true) = ¬won j i = true
w l : Fin n → ℤ
hw : w = fun r => ∑ j, if won r j = true then 1 else 0
hl : l = fun r => ↑n - 1 - w r
h₁ : ∑ r, w r = ∑ r, ∑ j, if won r j = true then 1 else 0
h₂ h₃ h₄ : (∑ r, ∑ j, if won r j = true then 1 else 0) = ∑ r, ∑ j, if won r j = true then 1 else 0
⊢ (∑ x, if won x.fst x.snd = true then 1 else 0) = ∑ x, if won x.1 x.2 = true then 1 else 0
```
## Question 1
<strong><u>Assumptions:</u></strong>
Let $n$ be an integer with $n > 1$. Define a binary relation $\text{won}(i, j)$ for all $1 \leq i, j \leq n$, satisfying the following conditions:

1. **Irreflexivity**: For all $i$, $\text{won}(i, i) = \text{false}$ (no one "wins against" themselves).
2. **Antisymmetry**: For any $i \ne j$,
   $$
   \text{won}(i, j) = \text{true} \iff \text{won}(j, i) = \text{false}
   $$
   That is, if $i$ wins against $j$, then $j$ does not win against $i$, and vice versa.

For each $r$, define:
- $w(r) = \sum_{j=1}^n [\text{won}(r, j) = \text{true}]$: the number of individuals $r$ wins against.
- $l(r) = n - 1 - w(r)$: the number of individuals $r$ loses to (i.e., total possible opponents minus self minus wins).

Also assume:
- $\sum_{r=1}^n w(r) = \sum_{r=1}^n \sum_{j=1}^n [\text{won}(r, j) = \text{true}]$
- And some repeated equalities used in the proof:
  $$
  \sum_{r=1}^n \sum_{j=1}^n [\text{won}(r, j) = \text{true}] = \sum_{r=1}^n \sum_{j=1}^n [\text{won}(r, j) = \text{true}]
  $$
  (These are only used for notational manipulation.)

<strong><u>Goal:</u></strong>
Prove that the following two sums are equal:
$$
\sum_{(x, y) \in \{1, \ldots, n\} \times \{1, \ldots, n\}} [\text{won}(x, y) = \text{true}] = \sum_{(x_1, x_2) \in \{1, \ldots, n\} \times \{1, \ldots, n\}} [\text{won}(x_1, x_2) = \text{true}]
$$

That is, summing over all ordered pairs $(x, y)$ and $(x_1, x_2)$ yields the same result—the sum does not depend on the names of the dummy variables.
## Question 1 (CN)
<strong><u>已知：</u></strong>
设 $n$ 是一个大于 $1$ 的正整数。我们定义一个二元关系 $\text{won}(i, j)$，它对所有 $1 \leq i, j \leq n$ 都有定义，并满足以下条件：

1. **自反性**：对于所有的 $i$，有 $\text{won}(i, i) = \text{假}$（即没有人“赢自己”）。
2. **反对称性**：对于任意 $i \ne j$，都有
   $$
   \text{won}(i, j) = \text{真} \iff \text{won}(j, i) = \text{假}
   $$
   也就是说，如果 $i$ 赢了 $j$，那么 $j$ 就没有赢 $i$，反之亦然。

对于每个 $r$，定义：
- $w(r) = \sum_{j=1}^n [\text{won}(r, j) = \text{真}]$，即 $r$ 赢了多少个人。
- $l(r) = n - 1 - w(r)$，即 $r$ 输了多少个人（总人数减去自己和胜利次数）。

还假设：
- $\sum_{r=1}^n w(r) = \sum_{r=1}^n \sum_{j=1}^n [\text{won}(r, j) = \text{真}]$
- 以及在某些证明步骤中重复出现的等式：
  $$
  \sum_{r=1}^n \sum_{j=1}^n [\text{won}(r, j) = \text{真}] = \sum_{r=1}^n \sum_{j=1}^n [\text{won}(r, j) = \text{真}]
  $$
  （这些只是证明中的等式变形。）

<strong><u>目标：</u></strong>
证明如下两个和式相等：
$$
\sum_{(x, y) \in \{1, \ldots, n\} \times \{1, \ldots, n\}} [\text{won}(x, y) = \text{真}] = \sum_{(x_1, x_2) \in \{1, \ldots, n\} \times \{1, \ldots, n\}} [\text{won}(x_1, x_2) = \text{真}]
$$

也就是说，对所有有序对 $(x, y)$ 和 $(x_1, x_2)$，遍历所有可能，两个加和结果相同。