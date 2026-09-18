# Action Items — v0.9 → v1.0 (updated 2026-09-10)

## 0. 前処理
- [x] P1–P12 の適用(v0.6→v0.9)
- [x] フラグ書式の統一(`**[...]**`)— 本文の未解決フラグは Notes 内 1 件のみ
- [x] 脚注の `[^name]` 化(7 件: avogadro, coherent, coordinate, curvature, bit, rectification, salience)
- [x] `[24]` → `[11]` 置換(revised.pdf の統合)/ `[18]` → `[12]` 統合
- [ ] `[22, 24]`(§7 末尾)→ `[22]`、`[11, 22, 24]` → `[11, 22]` の残り置換

## A. 外部文献 — 書誌確認(存在・著者・巻号頁)
- [x] [7] Leonard — 表題確定、*Metrologia* **59**(3) 038001、DOI 確定 ※論文番号方式のため頁なし
- [x] [8] Křen — P. Křen(Czech Metrology Institute)、arXiv のみ(preprint)
- [x] [9] Mohr, Shirley, Phillips, Trott — 共著者確定、DOI 確定
- [x] [10] Kalinin — 著者確定、arXiv:2605.06586
- [x] [12] パリティ **12**(4) 1997, 63–65 — 巻号確認済み
- [x] [13] VIM — 定義 1.1(quantity)/ 1.9(measurement unit)
- [x] [16] Quincey 2015 — Metrologia 52(4) 目次に不掲載を確認、preprint 確定
- [x] [18] McCarthy & Seidelmann — 2nd edn 2018、ISBN 確定
- [x] [19] IAU Res. B1.8 — 表題・Recommendation 3 の文言確定
- [x] [20] CCIR Rec. 460 — 表題・1970 採択 / 1972 発効確定
- [x] [24] 高橋秀俊『電磁気学』裳華房 1959、pp. 185–187
- [x] [26] Mills–Taylor–Thor — DOI 確定
- [x] [27] ISO 80000-13:2025(初版 2008)、単位記号確認
- [x] [30] Alder 2002 — Free Press, New York
- [x] [31] ISO 80000-3:2006 — item 3-23(damping coefficient, s⁻¹ と Np/s)
- [x] [32] 高田誠二『単位と単位系』共立出版 1980
- [x] [33] Eder 1982 — *Metrologia* **18** 1–12、Corrigendum 18 (1982) 171
- [x] [34] Aikhenvald *Classifiers* OUP 2000
- [x] [35] BIH *Bulletin Horaire* Ser. 4, No. 4 (1955) — UT2 の定義と導入
- [ ] [15] 黒木引用の形式決定(本文引用 / 脚注 URL)— 投稿先確定後でよい

※ Metrologia は 2019 年前後から論文番号方式。[4][5][6][7][9] に頁番号は存在しない。

## B. 外部文献 — 内容確認(主張を支えるか)
- [x] SI Brochure §2.3.4 — Hz/Bq の "shall only be used"、"the use of the different names emphasizes..."、s⁻¹ 非推奨と 2π 誤りの警告
- [x] ISO 80000-3 — 3-23 で Np/s を確認(加えて 3-15.2 / 3-16.b / 3-23.a が s⁻¹ を共有)
- [x] [26] abstract — 角度と対数の並行、CGPM が対数については未決定
- [x] [28] abstract — 振幅比 / パワー比を「二つの異なる量」とする立場 → §4.5 で立場の相違として言及済み
- [ ] [2] Mohr–Phillips: 実際の 2π 誤り事例を引用しているか(→ §4.2 の強度調整)/ 'ent' 提案の有無(→ §3 で engage するか)
- [ ] [9] 本文 — complete exponential function の定義を読み、§4.5 の言及を案 B(積極的補強)に格上げするか判断
- [ ] [16] Quincey の "two natural units" の正確な文言(§4.2 のパラフレーズ照合)
- [ ] [18] McCarthy & Seidelmann — 1972 年以前の UT2 追従の実務 / 潮汐減速(現状は書誌のみで引用)
- [ ] [10] Kalinin 2026 本文(9 頁)— 二元論への言及が §4 / §6.1(c) で必要か判断
- [ ] [33] Eder 1982 — abstract から「批評家ではなく有次元化の先駆者」と判明。§5.1 の位置づけを再検討

## C. 自前文書への書き足し・照合で解決(revised.pdf / glossary.md 側)
- [x] ν/ω「一種二単位」→ [22, §A.3, p. 18] で解決(書き足し不要)
- [x] h = ħ/rad = 2πħ/Ω₁ → [22, §A.3, p. 19, eq. (30)] で解決(書き足し不要)
- [ ] [11] 内部参照の一括照合: Table 4 / Table 7 / Table 8 / App. C eq. (8)(9) / p. 21 が最終版 revised.pdf と一致するか
- [ ] [11] / [22] の正式タイトル確定
- [ ] [23] m_E の定義文言(全周/Ω₁ か)と r_E の記載値(≈ 4.43 mm)
- [ ] g_E 定義の向き(Table 8 では g_E 側が defined)と glossary の記述の一致
- [ ] rectifying sphere との一致(m_E rad = 6367.45 km)— glossary §12 に一行追加するか
- [ ] Ricci [sr/m²] の読み — 現状 "made explicit here"。glossary に先に書けば引用に格下げ可(帰属の判断)
- [ ] univ mol の数値: 132.007729(2002)vs 132.007620(2026)— 精密値を出す箇所があれば 2026 版に統一
- [ ] [20-fig] Ampère 磁気殻の帰属 — 高橋 [24] で兼用するか、英語圏向け古典教科書を併記するか
- [ ] (論文外・glossary 宿題) 中黒 "・" 規則の明文化(#5/#10、下付き同層の細則込み)

## D. 編集・推敲(Markdown 上で完了させる)
- [ ] トーン一括: "inverts the truth" / "sails through"(§5.4)/ "obliged to erase" / "embarrasses its maker" / "dread" の残置可否
- [ ] 被引用者の目での通読: Quincey / Mohr & Phillips / Leonard / Kalinin / Kritchevsky / 黒木 / Eder
- [ ] 離陸単調性チェック: 各節冒頭一文の通し読み
- [ ] §2.2 documented/observable の音読チェック(§4.2 と近接時は "a matter of record" に)
- [ ] 脚注の番号固定方針(v1.0 以後は末尾追加のみ)/ アンカー級 salience・bit・coherent の自立性確認
- [ ] §5.2 bridging 上位概念の一文が入っているか確認 — §6.2 "two bridging constants" との整合
- [ ] [21] の扱い: ブログ維持 / [34] 併記 / [34] へ差し替え
- [ ] 参照番号の最終整理(本文出現順への並べ替えは最終段階で機械的に)
- [ ] Notes for the author 節・フラグメント見出し・作業注記の全削除(最終段)
- [ ] 最終 grep 掃引: `**[` ゼロ確認 / "N_A" 全件 / 無理性・超越性の主張箇所
- [ ] references.md 冒頭の "Pre-edit operations" 注記の削除(実行済みのため)

## E. 図版
- [ ] Figure 1 / Figure 2 の英語版作図+キャプション

## F. 出版準備
- [x] private GitHub リポジトリ作成(dimension_criterion)+ 初回 push
- [ ] 謝辞: AI 支援の開示一文(英語草稿支援・全内容は著者検証)
- [ ] 要旨の短縮版 trim 指針の確定(150–200 語版で落とす文の指定)
- [ ] 査読短縮版の除去候補ブロックの自己完結性メモ(§4.5、§6.1(c) 配当部、§6.2 重力拡張、§7 表の一部)
- [ ] 公開リポジトリ(論文単位・Concept DOI + Version DOI)/ Zenodo 連携 / verification log 同梱の要否
- [ ] 公開後アクション: Quincey らへの収斂通知メール(Kritchevsky 型二通目)/ Academia.edu discussion 招待 / Universal Times への保留解除
