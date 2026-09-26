# 短縮版メモ — 除去候補ブロックの自己完結性

**前提**: 全長版(GitHub / Zenodo)が正本。短縮版は投稿用の派生物であり、除去したブロックは
「正本を参照せよ」ではなく、**短縮版だけで論理が閉じる**ように前後を繕う必要がある。

**現状の分量**(本文のみ、参照文献・脚注を除く)

| 節 | 語数 | | 節 | 語数 |
|---|---:|---|---|---:|
| §1 Introduction | 810 | | §5.3 | 606 |
| §2 Criterion | 1215 | | §5.4 | 334 |
| §3 mol | 596 | | §6.1 | 1575 |
| §4.1–4.4 angles | 1959 | | §6.2 | 976 |
| §4.5 logarithm | 1000 | | §6.3 | 197 |
| §5.1 | 316 | | §7 | 785 |
| §5.2 | 599 | | §8 | 445 |

合計 **約 12 100 語**。要旨 353 語、参照文献 36 件、図 2 点。

---

## A. 除去候補と依存箇所

### ブロック 1 — §4.5「対数量」(1 000 語)

単独では自己完結しているが、**論文中で最も依存の多いブロック**。落とすと次の 7 箇所が宙に浮く。

| # | 箇所 | 現状の記述 | 処置 |
|---|---|---|---|
| 1 | 要旨 | "Logarithmic quantities, with three candidates — log e, log 2, log 10 — furnish a third, purely mathematical test case." | 文ごと削除 |
| 2 | 要旨末尾 | s⁻¹ の三分「[logarithmic quantity/time] for rate constants」 | 下記 #5 と連動。三分を保つなら要旨も保つ |
| 3 | §1 貢献リスト (ii) | "and to logarithmic quantities as a third case of non-uniqueness, one in which no physics is involved at all (Section 4.5)" | 句ごと削除 |
| 4 | §1 末尾(criterion reframes の段) | "A third kind — the logarithm, taken without a base — fails threefold, with no physics anywhere in the argument; Section 4.5 takes it up, and with it the demonstration that the criterion engages nothing but ratio structure." | 文ごと削除。**ただし失うものが大きい**(下記参照) |
| 5 | §6.1(c) 三分の段 | "the neper per second of attenuation practice [34]" と「三つの事例研究の次元に分かれる」 | 下記 B-1 の繕いが必要 |
| 6 | §6.1(c) 配当の段 | 平均寿命と半減期の合流([time/logarithmic quantity]) | ブロック 2 として分離除去 |
| 7 | §7 表 + 本文 + 脚注 [^bit] | 表の "(C2) logarithmic quantity / neper / ℧₁ = bit" 行、「三つの事例研究を超える射程」の文、bit 脚注 | 行を削除、文を書き換え、脚注は不要に |

**除去に伴う論証上の損失**(判断材料として明記しておく): §4.5 は「基準が物理と無関係に働く」ことを示す唯一の事例であり、
基準が角度論への後付けではないという最も強い証拠である。落とすと、基準の一般性は主張されるだけで実証されなくなる。
分量を優先するなら、全削除より **§4.5 を 1 000 語 → 150 語程度の 1 段落に圧縮**する方が論証の骨格は保たれる。
圧縮版は「log(xy) = log x + log y は構造を定めるが正規化を定めない。候補は log e / log 2 / log 10 の三つで、
いずれも異なる構造の中で唯一。よって (C2)。物理は一切登場しない」で足りる。

### ブロック 2 — §6.1(c) 配当の段(272 語)

**現状は一段落の中に二つの独立した配当が同居している**ため、そのままでは分割除去できない。
先に段落を二分しておくこと(全長版でも読みやすくなる)。

- 前半(約 110 語): 平均寿命と半減期の合流 — §4.5 に依存。ブロック 1 と**同時に落とす**。
- 後半(約 160 語): *h* と *ħ* の角度次元差、*E* = *hν*、Radian Convention — §4.5 から独立。**残す価値が高い**。
  §5.2 の per-angle 一族への合流点であり、量子論で最も有名な式に基準が届くことを示す一撃。

### ブロック 3 — §6.2 重力への拡張(157 語 + 脚注 [^curvature] 約 70 語)

`u = (1/2Ω₂)(E·D + H·B)` と Einstein 方程式の係数一致の段落。段落単位で自己完結。

**依存箇所は 2 つ**。

| # | 箇所 | 現状 | 処置 |
|---|---|---|---|
| 1 | §5.2 末尾 | "the per-angle constants and the Earth-local quartet are its most familiar members, **and Section 6.2 will meet two universal ones**." | 後半の前方参照を削除 |
| 2 | 要旨 | "and one coefficient, 1/2Ω₂, is exhibited in both the electromagnetic energy density and the Einstein field equation, unmasking the conventional 8π's as a single dimensioned constant" | 句ごと削除 |

§6.2 末尾の「二つの出現は同じ対象」の段(That so striking an identity…)も同時に落ちる。
一方、直後の rationalization の段(129 語)は独立しており**残せる**。

### ブロック 4 — §7 の表と周辺(785 語のうち約 300 語)

表そのものは短縮版でも強い(基準が実装されていることを一枚で示す)。削るなら本文の解説側。
ブロック 1 を落とす場合は表から logarithmic quantity の行が消え、
impedance を「第四の候補事例」として予告する文も根拠を失うので同時に削除。

---

## B. 繕いが必要な箇所の具体案

### B-1. §6.1(c) の s⁻¹ 三分 — ブロック 1 を落とす場合

三分は §6.1 の要であり、これを二分に落とすと節の主張が弱る。§4.5 なしで三分を保つなら、
対数量の次元をその場で一文だけ導入する:

> For exponential growth or decay the 'rate constant' is the slope of a logarithm. The logarithm taken
> without a base is itself a kind of quantity with no unique natural unit — log e, log 2 and log 10 are
> each salient within a different structure — and by (C2) it too carries a dimension; the rate constant
> is then of dimension [logarithmic quantity/time], the neper per second of attenuation practice [34].

これで §4.5 の結論だけを 40 語で借りてくる形になる。**この一文を入れるなら、A の「150 語に圧縮」案と
実質同じコストなので、圧縮案の方が得**。

### B-2. §5.2 末尾 — ブロック 3 を落とす場合

> …the per-angle constants and the Earth-local quartet are its most familiar members.

(前方参照の句を削るだけ。)

---

## C. 削減後の見積り

| 構成 | 語数 | 用途 |
|---|---:|---|
| 全長版(正本) | 12 100 | GitHub / Zenodo |
| ブロック 2 前半 + 3 のみ除去 | 11 700 | ほぼ効果なし。採る意味は薄い |
| ブロック 1 圧縮 + 2 前半 + 3 除去 | 10 700 | 論証の骨格を保つ最小の削減 |
| ブロック 1・2 前半・3・4 全除去 | 9 800 | 角度に絞った版。基準の一般性の実証を失う |
| 上記 + §5.3 §5.4 §7 を大幅圧縮 | 約 7 500 | 一般的な論文枠に収まる下限 |

**所見**: 12 100 語から 7 500 語まで落としても、この論文は「短い論文」にはならない。
投稿先が letter / short communication 枠(2 000–3 000 語)なら、切り詰めではなく
**§2 の基準 + §4.1–4.4 の角度 + §6.1 の時間分離だけの別稿**を書く方が速い。
その場合 UUS は存在証明として一段落にまとめ、全長版を参照する。

---

## D. 要旨の短縮版(180 語)

ブロック 1 と 3 を落とした短縮版に対応する要旨。数値は 353 語 → 180 語。

> The controversy over the dimensional status of the plane angle has been conducted as a binary
> question — dimensional or dimensionless — specific to the angle. We propose the general criterion
> the debate has lacked: a kind of quantity may be expressed by pure numbers without loss of
> information if and only if it possesses a *unique* natural unit, understood as a focal point on which
> independent parties would converge without prior communication; where two or more comparably
> natural candidates exist, the kind should carry an independent dimension, and the displaced
> candidates become dimensioned constants of the system. The criterion adjudicates the amount of
> substance (unique natural unit *N*<sub>A</sub>⁻¹; the mole is legitimate but optional) and the plane and
> solid angles (rad vs. Ω₁ = 2π rad, sr vs. Ω₂ = 4π sr; independent dimension required) within a single
> framework, and identifies the documented Hz/rad s⁻¹ incoherence and the century-old
> rationalization controversy in electromagnetism as the predicted failure modes of de-dimensionalizing
> non-unique kinds. Rather than proposing any change to the SI, we examine the Universal Unit System,
> which adopts the opposite choice, as an existence proof. Each system makes a choice; side by side,
> the choices become visible as choices.

**落とした文**(全長版のみに残るもの):

1. 対数量の三候補の文 — ブロック 1 と連動
2. `[X/angle]` の bridging constants と航海マイル・原メートルの例 — 分量が大きい割に要旨では効きにくい
3. 五次元電磁気配置・1997 年・場の強さ比と抵抗の分離 — 一句に圧縮するか全削除
4. `1/2Ω₂` の係数一致 — ブロック 3 と連動
5. s⁻¹ の三分 — ブロック 1 と連動

150 語まで詰めるなら、上記から第二文(基準の定義)の従属節を削り、
「a focal point on which independent parties would converge without prior communication」を落とす。
ただしこの句は基準の操作的定義そのものなので、**削るなら本文冒頭で必ず補うこと**。

---

## E. 作業順序

1. 全長版の本文を凍結(残: §7 の未了項目、最終 grep 掃引)
2. **日本語訳での通読確認** — 全長版に対して行う。短縮版に対しては不要(削るだけなので)
3. Zenodo 公開(全長版)
4. 短縮版の作成 — 上記 A–D に従う。投稿先が決まってから着手する方が無駄がない

2 と 4 の順序が重要。訳出確認の前に短縮版に着手すると、二つの版を並行して直すことになる。
