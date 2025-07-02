## Angelic Statement
```Lean
rw [intervalIntegral.integral_add, intervalIntegral.integral_sub]
```
## Residual State
```Lean
5 goals

α : ℝ
f : ℝ → ℝ
hf : f ∈
  {f |
    (∀ x ∈ Icc 0 1, f x > 0) ∧
      ContinuousOn f (Icc 0 1) ∧
        ∫ (x : ℝ) in 0 ..1, f x = 1 ∧ ∫ (x : ℝ) in 0 ..1, x * f x = α ∧ ∫ (x : ℝ) in 0 ..1, x ^ 2 * f x = α ^ 2}
h₁ : ∀ x ∈ Icc 0 1, f x > 0
h₂ : ContinuousOn f (Icc 0 1)
h₃ : ∫ (x : ℝ) in 0 ..1, f x = 1
h₄ : ∫ (x : ℝ) in 0 ..1, x * f x = α
h₅ : ∫ (x : ℝ) in 0 ..1, x ^ 2 * f x = α ^ 2
⊢ ((∫ (x : ℝ) in 0 ..1, x ^ 2 * f x) - ∫ (x : ℝ) in 0 ..1, 2 * α * (x * f x)) + ∫ (x : ℝ) in 0 ..1, α ^ 2 * f x =
  ∫ (x : ℝ) in 0 ..1, x ^ 2 * f x - ∫ (x : ℝ) in 0 ..1, 2 * α * (x * f x) + ∫ (x : ℝ) in 0 ..1, α ^ 2 * f x

case hf
α : ℝ
f : ℝ → ℝ
hf : f ∈
  {f |
    (∀ x ∈ Icc 0 1, f x > 0) ∧
      ContinuousOn f (Icc 0 1) ∧
        ∫ (x : ℝ) in 0 ..1, f x = 1 ∧ ∫ (x : ℝ) in 0 ..1, x * f x = α ∧ ∫ (x : ℝ) in 0 ..1, x ^ 2 * f x = α ^ 2}
h₁ : ∀ x ∈ Icc 0 1, f x > 0
h₂ : ContinuousOn f (Icc 0 1)
h₃ : ∫ (x : ℝ) in 0 ..1, f x = 1
h₄ : ∫ (x : ℝ) in 0 ..1, x * f x = α
h₅ : ∫ (x : ℝ) in 0 ..1, x ^ 2 * f x = α ^ 2
⊢ IntervalIntegrable (fun x => x ^ 2 * f x) MeasureTheory.volume 0 1

case hg
α : ℝ
f : ℝ → ℝ
hf : f ∈
  {f |
    (∀ x ∈ Icc 0 1, f x > 0) ∧
      ContinuousOn f (Icc 0 1) ∧
        ∫ (x : ℝ) in 0 ..1, f x = 1 ∧ ∫ (x : ℝ) in 0 ..1, x * f x = α ∧ ∫ (x : ℝ) in 0 ..1, x ^ 2 * f x = α ^ 2}
h₁ : ∀ x ∈ Icc 0 1, f x > 0
h₂ : ContinuousOn f (Icc 0 1)
h₃ : ∫ (x : ℝ) in 0 ..1, f x = 1
h₄ : ∫ (x : ℝ) in 0 ..1, x * f x = α
h₅ : ∫ (x : ℝ) in 0 ..1, x ^ 2 * f x = α ^ 2
⊢ IntervalIntegrable (fun x => 2 * α * (x * f x)) MeasureTheory.volume 0 1

case hf
α : ℝ
f : ℝ → ℝ
hf : f ∈
  {f |
    (∀ x ∈ Icc 0 1, f x > 0) ∧
      ContinuousOn f (Icc 0 1) ∧
        ∫ (x : ℝ) in 0 ..1, f x = 1 ∧ ∫ (x : ℝ) in 0 ..1, x * f x = α ∧ ∫ (x : ℝ) in 0 ..1, x ^ 2 * f x = α ^ 2}
h₁ : ∀ x ∈ Icc 0 1, f x > 0
h₂ : ContinuousOn f (Icc 0 1)
h₃ : ∫ (x : ℝ) in 0 ..1, f x = 1
h₄ : ∫ (x : ℝ) in 0 ..1, x * f x = α
h₅ : ∫ (x : ℝ) in 0 ..1, x ^ 2 * f x = α ^ 2
⊢ IntervalIntegrable (fun x => x ^ 2 * f x - 2 * α * (x * f x)) MeasureTheory.volume 0 1

case hg
α : ℝ
f : ℝ → ℝ
hf : f ∈
  {f |
    (∀ x ∈ Icc 0 1, f x > 0) ∧
      ContinuousOn f (Icc 0 1) ∧
        ∫ (x : ℝ) in 0 ..1, f x = 1 ∧ ∫ (x : ℝ) in 0 ..1, x * f x = α ∧ ∫ (x : ℝ) in 0 ..1, x ^ 2 * f x = α ^ 2}
h₁ : ∀ x ∈ Icc 0 1, f x > 0
h₂ : ContinuousOn f (Icc 0 1)
h₃ : ∫ (x : ℝ) in 0 ..1, f x = 1
h₄ : ∫ (x : ℝ) in 0 ..1, x * f x = α
h₅ : ∫ (x : ℝ) in 0 ..1, x ^ 2 * f x = α ^ 2
⊢ IntervalIntegrable (fun x => α ^ 2 * f x) MeasureTheory.volume 0 1
```
## Question 1
<strong><u>Assumptions:</u></strong>
- Let $\alpha$ be a real number.
- Let $f$ be a real-valued function defined on the interval $[0, 1]$, satisfying all of the following:
    1. $f(x) > 0$ for all $x \in [0, 1]$;
    2. $f$ is continuous on $[0, 1]$;
    3. $\displaystyle \int_0^1 f(x), dx = 1$;
    4. $\displaystyle \int_0^1 x f(x), dx = \alpha$;
    5. $\displaystyle \int_0^1 x^2 f(x), dx = \alpha^2$.
<strong><u>Goal:</u></strong>
- Under the above assumptions, the function $x^2 f(x)$ is integrable on $[0, 1]$ (i.e., $\displaystyle \int_0^1 x^2 f(x), dx$ exists).
## Question 1 (CN)
<strong><u>已知：</u></strong>
- 设 $\alpha$ 是一个实数。
- 设 $f$ 是定义在 $[0, 1]$ 上的实值函数，满足以下所有条件：
    1. $f(x) > 0$，对于所有 $x \in [0, 1]$；
    2. $f$ 在 $[0, 1]$ 上连续；
    3. $\displaystyle \int_0^1 f(x), dx = 1$；
    4. $\displaystyle \int_0^1 x f(x), dx = \alpha$；
    5. $\displaystyle \int_0^1 x^2 f(x), dx = \alpha^2$。
<strong><u>目标：</u></strong>
- 在上述条件下，$x^2 f(x)$ 在区间 $[0, 1]$ 上是可积函数（即 $\displaystyle \int_0^1 x^2 f(x), dx$ 存在）。
## Question 2
<strong><u>Assumptions:</u></strong>
- Let $\alpha$ be a real number.
- Let $f$ be a real-valued function defined on $[0, 1]$, such that:
    1. $f(x) > 0$ for all $x \in [0, 1]$;
    2. $f$ is continuous on $[0, 1]$;
    3. $\displaystyle \int_0^1 f(x), dx = 1$;
    4. $\displaystyle \int_0^1 x f(x), dx = \alpha$;
    5. $\displaystyle \int_0^1 x^2 f(x), dx = \alpha^2$.
<strong><u>Goal:</u></strong>
- Under these assumptions, the function $2\alpha, x f(x)$ is integrable on $[0, 1]$ (that is, $\displaystyle \int_0^1 2\alpha, x f(x), dx$ exists).
## Question 2 (CN)
<strong><u>已知：</u></strong>
- 设 $\alpha$ 是一个实数。
- 设 $f$ 是定义在 $[0, 1]$ 上的实值函数，满足下列所有条件：
    1. 对于所有 $x \in [0, 1]$，有 $f(x) > 0$；
    2. $f$ 在区间 $[0, 1]$ 上连续；
    3. $\displaystyle \int_0^1 f(x), dx = 1$；
    4. $\displaystyle \int_0^1 x f(x), dx = \alpha$；
    5. $\displaystyle \int_0^1 x^2 f(x), dx = \alpha^2$。
<strong><u>目标：</u></strong>
- 在上述条件下，函数 $2\alpha, x f(x)$ 在区间 $[0, 1]$ 上可积（即 $\displaystyle \int_0^1 2\alpha, x f(x), dx$ 存在）。
## Question 3
<strong><u>Assumptions:</u></strong>
- Let $\alpha$ be a real number.
- Let $f$ be a real-valued function defined on $[0, 1]$, such that:
    1. $f(x) > 0$ for all $x \in [0, 1]$;
    2. $f$ is continuous on $[0, 1]$;
    3. $\displaystyle \int_0^1 f(x), dx = 1$;
    4. $\displaystyle \int_0^1 x f(x), dx = \alpha$;
    5. $\displaystyle \int_0^1 x^2 f(x), dx = \alpha^2$.
<strong><u>Goal:</u></strong>
- Under these assumptions, the function $x^2 f(x) - 2\alpha, x f(x)$ is integrable on $[0, 1]$ (that is, $\displaystyle \int_0^1 \left(x^2 f(x) - 2\alpha, x f(x)\right), dx$ exists).
## Question 3 (CN)
<strong><u>已知：</u></strong>
- 设 $\alpha$ 是一个实数。
- 设 $f$ 是定义在 $[0, 1]$ 上的实值函数，满足以下所有条件：
    1. 对所有 $x \in [0, 1]$，$f(x) > 0$；
    2. $f$ 在区间 $[0, 1]$ 上连续；
    3. $\displaystyle \int_0^1 f(x), dx = 1$；
    4. $\displaystyle \int_0^1 x f(x), dx = \alpha$；
    5. $\displaystyle \int_0^1 x^2 f(x), dx = \alpha^2$。
<strong><u>目标：</u></strong>
- 在上述条件下，函数 $x^2 f(x) - 2\alpha, x f(x)$ 在区间 $[0, 1]$ 上可积（即 $\displaystyle \int_0^1 \left(x^2 f(x) - 2\alpha, x f(x)\right), dx$ 存在）。
## Question 4
<strong><u>Assumptions:</u></strong>
- Let $\alpha$ be a real number.
- Let $f$ be a real-valued function defined on $[0, 1]$, such that:
    1. $f(x) > 0$ for all $x \in [0, 1]$;
    2. $f$ is continuous on $[0, 1]$;
    3. $\displaystyle \int_0^1 f(x), dx = 1$;
    4. $\displaystyle \int_0^1 x f(x), dx = \alpha$;
    5. $\displaystyle \int_0^1 x^2 f(x), dx = \alpha^2$.
<strong><u>Goal:</u></strong>
- Under these assumptions, the function $\alpha^2 f(x)$ is integrable on $[0, 1]$ (that is, $\displaystyle \int_0^1 \alpha^2 f(x), dx$ exists).
## Question 4 (CN)
<strong><u>已知：</u></strong>
- 设 $\alpha$ 是一个实数。
- 设 $f$ 是定义在区间 $[0, 1]$ 上的实值函数，满足下列所有条件：
    1. 对所有 $x \in [0, 1]$，$f(x) > 0$；
    2. $f$ 在区间 $[0, 1]$ 上连续；
    3. $\displaystyle \int_0^1 f(x), dx = 1$；
    4. $\displaystyle \int_0^1 x f(x), dx = \alpha$；
    5. $\displaystyle \int_0^1 x^2 f(x), dx = \alpha^2$。
<strong><u>目标：</u></strong>
- 在上述条件下，函数 $\alpha^2 f(x)$ 在区间 $[0, 1]$ 上是可积的（即 $\displaystyle \int_0^1 \alpha^2 f(x), dx$ 存在）。