# Action Items — v0.9 → v1.0 (2026-07-18)

## 0. 前処理
- [ ] P1–P12 の適用(v0.6→v0.9、前ターンの patch list)
- [ ] フラグ書式の統一: 全フラグを `**[...]**` に揃える(L434 の単括弧 `[check canonical statement...]`、手作業マージで落ちた可能性のあるフラグを復元 → 以後 `grep -n '\*\*\['` が全数一覧になる)
  - 落ちた可能性: §6.1 の CCIR 460 番号 / IAU 2000 Res. B1.8 / McCarthy & Seidelmann、§6.2 高橋書誌

## A. 外部文献 — 書誌確認(存在・著者・巻号頁)
- [ ] [8] arXiv:2011.08666 の著者名・掲載誌(CCL 2016 コンセンサスの出典)
- [ ] [9] Mohr et al. 2022 の共著者リスト(E. L. Shirley? M. Trott?)
- [ ] [10] arXiv:2605.06586 の著者
- [ ] [13] VIM 3rd edn の定義番号(measurement unit)
- [ ] [16] Quincey 2015 Comment の出版版(誌名・年・頁)
- [ ] [25] Shannon 1948: 当該文の頁
- [ ] [26] Mills–Taylor–Thor 2001 の頁
- [ ] [27] ISO 80000-13 の版年・単位記号(Sh/Hart/nat)
- [ ] [28] Mills & Morfey 2005 の完全書誌
- [ ] 高橋秀俊『電磁気学』(裳華房)初版年(手元: 昭和46年第15刷、pp.185–187)
- [ ] McCarthy & Seidelmann *Time* の版(2nd edn 2018?)
- [ ] IAU 2000 Resolution B1.8(ERA による UT1 定義)/ IERS Conventions 該当節
- [ ] CCIR Recommendation 460(1970採択・1972実施)
- [ ] メートル史(1791 振り子棄却理由二件): Alder または CGPM historical annex
- [ ] 海里=子午線弧1分の定義の標準出典
- [ ] (採用するなら) Aikhenvald *Classifiers* 2000 / Eder 1982 の実在確認(§5.1 で言及するか要判断)

## B. 外部文献 — 内容確認(主張を支えるか)
- [ ] [2] Mohr–Phillips: 実際の 2π 誤り事例を引用しているか(→ §4.2 "published factor-of-2π errors" の強度調整)/ 'ent' 提案の有無(→ §3 末尾で engage するか)
- [ ] [16] Quincey の "two natural units" の正確な文言(§4.2 のパラフレーズ照合)
- [ ] [28] が dB 10log/20log 混同の記述を支えるか(§4.5 故障モード文の強度調整)
- [ ] ISO 80000-3: Np/s・Np/m の規格上の位置(§6.1(c))
- [ ] SI Brochure: Hz/Bq の使い分け指示の正確な文言(§6.1(c))/ 「量の関係式が一次」の canonical statement(§8, SI Brochure §1 か ISO 80000-1)/ 供給単位史 1960/1980/1995(§1)
- [ ] McCarthy & Seidelmann: 1972年以前の周波数オフセット運用(UT2 追従)/ UT2 の退場 / 潮汐減速(§6.1)
- [ ] [10] 2026 arXiv の内容一読(§1 の「論争は活発」の裏取り+想定反論の更新)

## C. 自前文書への書き足し・照合で解決(revised.pdf / glossary.md 側)
- [ ] ν/ω「一種二単位」: univunit-j eq.(30) の所在確認+revised.pdf/glossary に明文があるか。なければ glossary に一文追加 → 論文は引用に切替(§6.1(c) フラグ2件解消)
- [ ] E = hν を単一法則とする形の明文(同上; なければ glossary に追加)
- [ ] Ricci [sr/m²] の読み: 現状 "made explicit here"。glossary(Ω₂ 項)に先に書けば timestamped になり論文は引用に格下げ可 — どちらの帰属にするか決定
- [ ] rectifying sphere との一致(m_E rad = 6367.45 km): glossary §12 に一行追加 → 論文脚注は引用に
- [ ] [23] フラグ: m_E の定義文言(全周/Ω₁ か)と r_E ≈ 4.43 mm の記載値を glossary で確認(相違あれば glossary 側を精密化)
- [ ] g_E 定義の向き(Table 8 = g_E 側が defined)と glossary の記述の一致確認(§5.3 出典)
- [ ] [24] 内部参照の一括照合: Table 4 / Table 7 / Table 8 / App. C eq.(8)(9) / p.21 が最終版 revised.pdf の番号と一致するか
- [ ] [11]/[22]/[24] の統合方針と正式タイトル確定([22] univunit-e の書誌名、last modified 2002-02-10 / archive 2015 の扱いは refs には年のみ)
- [ ] univ mol の数値: 132.007729(2002 Table 2)vs 132.007620(2026 Table 4)— 論文は ≈132 のみだが、精密値を出す箇所があれば 2026 値に統一
- [ ] [20] Ampère 磁気殻の帰属: 高橋 pp.185–187 で兼用するか、英語圏向けに古典教科書(要選定)を併記するか
- [ ] (論文外・glossary 宿題) 中黒 "・" 規則の明文化(#5/#10、下付き同層の細則込み — 会話中に文案あり)

## D. 編集・推敲(Markdown 上で完了させる)
- [ ] トーン一括: "inverts the truth" / "sails through"(§5.4, 代替案は Notes)/ "obliged to erase" / "embarrasses its maker" / "dread" の残置可否
- [ ] 被引用者の目での通読: Quincey / Mohr & Phillips / Leonard / Kalinin / Kritchevsky / 黒木
- [ ] 離陸単調性チェック: 各節冒頭一文の通し読み
- [ ] §2.2 documented/observable の音読チェック(§4.2 と近接時は "a matter of record" に)
- [ ] 脚注8件の書式統一+番号固定方針(v1.0 以後は末尾追加のみ)/ アンカー級 (1)(4)(6) の自立性確認((1) は "of salience just given" 追加)
- [ ] §5.2 bridging 上位概念の一文(選択肢(b))が入っているか確認 — §6.2 "two bridging constants" との整合
- [ ] [15] 黒木引用の形式決定(本文引用 or 脚注URL)/ [17] ブログ→公式出典への差替可否 / [21] ブログ or 言語学文献
- [ ] 参照番号の最終整理(本文出現順への並べ替え、[18] 差替後の整合)
- [ ] Notes for the author 節・フラグメント見出し・作業注記の全削除(最終段)
- [ ] 最終 grep 掃引: `**[` ゼロ確認 / "N_A" 全件 / 無理性・超越性の主張箇所

## E. 図版
- [ ] Figure 1 / Figure 2 の英語版作図([19][20])+キャプション

## F. 出版準備
- [ ] private GitHub リポジトリ作成+初回 push(タイムスタンプ確保; 以後コミット単位=フラグ解消単位)
- [ ] 謝辞: AI 支援の開示一文(Claude による英語草稿支援・全内容は著者検証)
- [ ] 要旨の短縮版 trim 指針の確定(150–200語版で落とす文の指定)
- [ ] 査読短縮版の除去候補ブロックの自己完結性メモ(§4.5→代替段落、§6.1(c)配当部、§6.2 重力拡張、§7 表の一部)
- [ ] 公開リポジトリ(論文単位・Concept DOI + Version DOI)の命名 / Zenodo 連携 / verification log 同梱の要否
- [ ] 公開後アクション(参照用): Quincey らへの収斂通知メール(Kritchevsky 型二通目)/ Academia.edu discussion 招待 / Universal Times への保留解除
