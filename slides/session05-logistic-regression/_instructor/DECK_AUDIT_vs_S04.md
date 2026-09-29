# Session 05 deck audit vs Session 04 gold and the locked 24-slide spine

**Verdict: FAIL. Rewrite the deck to 24 slides. Do not teach this file.**

The rendered deck is **35 reveal sections** (title + 34 content slides). `BUILD_NOTES.md` still says the outline locks 35 slides and that a 24-slide line “is not the outline.” That note is obsolete. The builder follow-up on the Session 05 cloud run replaces the 35-slide draft. A 35-slide file cannot pass this audit by being tidy, measured, or OJ-only.

| | |
|---|---|
| Deck | `slides/session05-logistic-regression/session05-logistic-regression.qmd` |
| Render checked | `session05-logistic-regression.html` — 35 `<section>` elements |
| Commit audited | `9330781` on `cursor/session05-logistic-slides-b9ac` (PR #3) |
| Session 04 gold in this checkout | `slides/70-467_MLBA_2026-09-16_ModelSelectionAndRegularization.html` (33 sections: title + 32). No Session 04 `.qmd` is in this repo. |
| Locked target | 24-slide spine from the builder follow-up (quoted below). It is not a file in the repo. |

Five slides can survive as spine slots 1–5. The other **30 fail**. Passing theme colors and a correct `stopifnot` block do not pass the hour.

## Locked spine (the only legal structure)

1. Title
2. Pair (Cas & Abdullah)
3. Grid roadmap — Logistic marked
4. Decision: can we predict the OJ brand? (653 / 417 bar)
5. Codebook
6. What we will do
7. Brand choice is a probability / why not a line `{.section-start}`
8. Example: OJ class means 0.72 vs 0.32
9. Fence: `lm` range 0.036–1.051
10. Bins: 0.12 / 0.28 / 0.53 / 0.77 / 0.96
11. The curve `{.section-start}` — logistic function, then a Fig 4.2-style OJ overlay (`r-stack`)
12. Odds from the function
13. Odds ladder (0.61 ↔ 1.56)
14. β multiplies odds, not \(p\)
15. Checkpoint: what to remember / what to do (two cards, two clicks)
16. MLE `{.section-start}` — before any coefficient table
17. Example table: −2.76 / 6.09
18. Example: +0.1 loyalty multiplies odds by 1.84; \(\Delta p\) depends on the baseline
19. Add PriceDiff `{.section-start}` — held fixed, not a confounding skit
20. Example: +$0.10 multiplies odds by 1.33
21. Hand score `{.section-start}`: \(\eta = 0.522 \rightarrow \hat p \approx 0.63\), then `predict`
22. Example: same loyalty, opposite price — 0.63 vs 0.35, plus the 0.92 row
23. What to remember — OJ numbers, and return to the opening question
24. Before next class — one cutoff deferral, **in the notes only**

Order locks inside that list:

- The logistic **function** (11) comes before **odds** (12–13).
- **MLE** (16) comes before the coefficient **table** (17).
- The **hand score** (21) writes \(\eta = 0.522\) before the machine prints 0.63.
- The loyalty move on the glass is a **human-sized** +0.1 (\(\times 1.84\)), and the price move is +$0.10 (\(\times 1.33\)). A one-unit LoyalCH multiplier (\(e^{6.40} \approx 602\)) is the wrong sentence.
- Remove the dos/don’ts trilogy and any standalone cutoff slide. No confusion matrix, no ROC lesson, no Default (and no Credit / Carseats / heart story).

## Session 04 bar used here

From the published Session 04 HTML, confirmed in this repo:

- Canvas matches: 1280×720, margin 0.04, `transition: none`, linear navigation, `theme: simple` plus `mlba-reveal.css`.
- First six **content** slides have **zero** fragments (title is also static). Clicks start on the first real section slide.
- That first section slide is a lesson (questions, formula, six fragments). It is a weaver **band on the heading**, with the rest of the slide in the light theme. It is not a blank navy frame, and it is not a one-sentence interstitial.
- Plot swaps use `r-stack` (three Session 04 slides: forward stepwise, the Cp/AIC/BIC cliff, shrinkage vs least squares). Fragments state the claim, then the picture.
- `theme_mlba` ink is weaver `#182C4B`, red `#C41230`, iron `#6D6E71`, paper `#F4F6F8`, teal `#008F91`.
- One job per slide. Numbers on the glass are computed on the file.

## Global checklist

| Check | Result |
|---|---|
| 24 slides, not 35 | **FAIL.** 35 sections. |
| Function before odds | **FAIL.** Odds and the logit are taught before the logistic equation. The only earlier curve is an invented sketch. |
| MLE before the table | **FAIL.** MLE is reveal slide 26. Coefficient tables are slides 23 and 25. |
| Hand score \(\eta = 0.522\) | **FAIL.** The string `0.522` does not appear. Slide 29 hero-prints 0.63 from `predict`. |
| Human-sized \(\Delta\) | **FAIL.** No \(\times 1.84\), no \(\times 1.33\). The two-predictor table prints \(e^{\hat\beta}\) on the full unit: about 0.039, **601.845**, **17.462**. |
| Open 1–6 with no clicks | **PASS** for reveal slides 1–6 (title through the codebook). Reveal slide 6’s agenda is still a fail on content (below). |
| Section-start = weaver band, not a blank dark slide | **FAIL as built.** Four bands are real bands, and each is an empty interstitial (about 120–180 characters, zero fragments). Session 04 section slides carry the idea. |
| Fragments claim-first, then the plot; `r-stack` for swaps | **FAIL.** `r-stack` count is 0 (Session 04 has 3). All 15 figures are visible on arrival. 11 of 13 fragments are answer notes under a question. |
| `theme_mlba` CMU colors | **PASS.** Setup colors match the Session 04 ink. |
| `fig-height` on every plot | **PASS as an attribute** (15/15). Several are 4.05–4.20 inches beside code, a formula, and a prompt on a 720-tall frame. Overflow was **not** pixel-measured; that check is **not passed**. |
| One idea per slide | **FAIL.** See the split fence, the split curve, and the three-slide prediction ending. |
| Measured numbers only | **FAIL.** The “teaching sketch” uses `plogis(-2.2 + 4.8 * x)` and the caption says it is not the fit. |
| No confusion / ROC lesson / Default | **FAIL on the cutoff act.** No Default, no confusion matrix, no ROC curve. The roadmap cell “ROC, cutoff” matches Session 04’s grid and is not a lesson. Reveal slides 31–35 still **teach the cutoff deferral on the glass**. Spine slide 24 allows one line in the notes only. |

## Spine crosswalk

| Spine | What the current deck does | Verdict |
|---|---|---|
| 1 Title | Reveal 1. Navy title, no date, CMU logos, topic as subtitle. | **PASS** |
| 2 Pair | Reveal 2. Cas and Abdullah, no click. | **PASS** |
| 3 Grid | Reveal 3. Logistic row marked. Thresholds cell says “ROC, cutoff,” same as Session 04. | **PASS** |
| 4 Decision + bar | Reveal 4. \(n = 1{,}070\), CH 653 / MM 417, one bar chart. | **PASS** |
| 5 Codebook | Reveal 5. Purchase, LoyalCH, PriceDiff, plus the two sale prices. Workhorses named. | **PASS** |
| 6 Agenda | Reveal 6. Five bullets promise “odds and the logit” before the fit, then “what we can and cannot claim.” | **FAIL** |
| 7 Why-not-line section | Reveal 7 is an empty band. The actual binary-vs-dollars argument is reveal 8, with code and a jitter plot. | **FAIL** |
| 8 Means 0.72 vs 0.32 | Reveal 9 has the means and the boxplot. Reveal 27 draws the same LoyalCH boxes again. | **FAIL** (split / duplicated) |
| 9 Fence 0.036–1.051 | Split across reveal 10 (the `lm` temptation) and reveal 11 (the annotated range). | **FAIL** |
| 10 Bins | Reveal 12. Rates match. Table, code, and a 4.2-inch bar chart share the slide. | **FAIL** (right numbers, extra machinery, wrong neighbors) |
| 11 Curve + Fig 4.2 overlay | Reveal 13 is a fake sketch. Reveal 18 is the fitted curve, after odds. No `r-stack`. | **FAIL** |
| 12–13 Odds from the function, then the ladder | Reveal 14–16 teach odds and the logit with no function behind them. The 0.61 ↔ 1.56 row does exist on reveal 15. | **FAIL** |
| 14 β multiplies odds, not \(p\) | Scattered across reveal 17 (two-predictor equation, too early), 19 (unlabeled +0.1 segments), and 24 (full-unit \(e^{\beta}\)). | **FAIL** |
| 15 Two-card checkpoint | Reveal 20 has two clicks. The “Next” card promises another `glm` tour and an odds-multiplier reading of the full unit. | **FAIL** |
| 16 MLE before the table | Reveal 26, after both coefficient tables, and the fragment says “Trust `glm`.” | **FAIL** |
| 17 Table −2.76 / 6.09 | Reveal 23, after a second printing of the same coefs on reveal 18, and after MLE should have landed. | **FAIL** |
| 18 +0.1 → ×1.84 and two baselines | Reveal 19 draws +0.1 segments and the notes forbid reading a \(\Delta p\). ×1.84 is absent. | **FAIL** |
| 19 Add PriceDiff, held fixed | Reveal 21 is another empty band. Reveal 25 adds the variable inside a three-column odds table of full-unit multipliers. | **FAIL** |
| 20 +$0.10 → ×1.33 | Absent. Reveal 25’s PriceDiff multiplier is \(e^{2.86} \approx 17.5\). | **FAIL** |
| 21 Hand score 0.522 → 0.63 | Reveal 28 is an empty band. Reveal 29 prints 0.63 from `predict` with no \(\eta\). | **FAIL** |
| 22 Three visits | Reveal 30 has 0.63 / 0.35 / 0.92. It sits after the hero number and before a cutoff lecture. | **FAIL** |
| 23 Remember + opening question | Split across reveal 32 (can/cannot), 33 (dos/don’ts), and 34 (five takeaways). The opening shopper question does not come back. | **FAIL** |
| 24 Close, cutoff in notes only | Reveal 35 puts hits, misses, and cutoffs on the glass. Reveal 31 is a whole cutoff slide. | **FAIL** |

## Slide-by-slide

Reveal index includes the title. **PASS** means the slide can stay, as built, inside the 24-slide spine. A correct number on a slide that must be merged, moved, or deleted is a **FAIL**.

| # | Title | Verdict | Why |
|---|---|---|---|
| 1 | Title — Logistic regression | **PASS** | Spine 1. Navy `#182C4B`, no date, professor line, both logos. |
| 2 | Where Cas and Abdullah left us | **PASS** | Spine 2. No fragment. Does not steal a Monday example. |
| 3 | Where are we on the grid? | **PASS** | Spine 3. Logistic row is `class="here"`. “ROC, cutoff” is the Thresholds tools cell, copied from the Session 04 roadmap. It is not a ROC lesson. No click. |
| 4 | Can we predict which OJ brand a shopper buys? | **PASS** | Spine 4. 653 / 417 bar, `fig-height: 3.55`, one decision question. No click. |
| 5 | What is in the file? | **PASS** | Spine 5. Workhorses are LoyalCH and PriceDiff. The long column list stays in the notes. |
| 6 | Outline of today | **FAIL** | Bullet 2 is “Odds and the logit” before any curve. Bullet 5 promises a can/cannot slide the spine deletes. This agenda will rebuild the 35-slide hour if the speaker follows it. |
| 7 | Why not a straight line on brand choice? | **FAIL** | Empty section band: kicker, one sentence, no fragment, no picture. Session 04’s first section slide is the argument. Spine 7 has to contain the why-not-line idea. |
| 8 | Brand choice is not a dollar balance | **FAIL** | Second slide on the same idea. Bullets, a cases formula, an `echo: true` chunk, a jitter plot (`fig-height: 4.15`), and a prompt. The share 0.61 belongs on the odds ladder, not as a second binary-definition slide. |
| 9 | Example on OJ — do loyal shoppers buy CH more often? | **FAIL** | 0.72 vs 0.32 are the right means, on the wrong side of an empty band, with code that reprints the figure labels. Reveal 27 repeats the chart. One means slide, spine 8. |
| 10 | What if we treat CH/MM like a dollar amount? | **FAIL** | Half of the fence. The `lm` line is drawn here and again on the next slide. Spine 9 is one slide with the range 0.036–1.051. |
| 11 | Example on OJ — a “chance” of 1.05? | **FAIL** | The other half of the fence. The range is correct and locked. It does not get its own encore. `fig-height: 4.15` plus the previous slide’s twin line. |
| 12 | Example on OJ — CH share by loyalty bins | **FAIL** | Rates 0.12, 0.28, 0.53, 0.77, 0.96 match the lock. The slide also shows a hand-built HTML table and `tapply` of the same rates, under a 4.2-inch chart. Keep the bars. Delete the duplicate table-or-code. This is spine 10 material only after the fence is one slide. |
| 13 | Stay between 0 and 1 — and still use loyalty | **FAIL** | Invented curve, `plogis(-2.2 + 4.8 * LoyalCH)`, captioned “Not the fit on this file.” That breaks “measured only.” Spine 11 is the logistic function and then the **fitted** OJ overlay, swapped with `r-stack`. |
| 14 | From chance to odds to a curve | **FAIL** | Empty band. Odds are announced before the function exists. Spine 11 is the curve section; odds start at spine 12, derived from that function. |
| 15 | Odds are “how many to one,” not the chance itself | **FAIL** | The ladder 0.25 / 0.50 / 0.75 / 0.61 ↔ 1.56 is the right language for spine 13, and it is in the wrong act. The only fragment reveals “\(p = 0.5\)” after the table already shows the even row. |
| 16 | Why take the log of the odds? | **FAIL** | A separate logit lecture. Spine 12–14 cover odds-from-the-function and “β multiplies odds” without a solo logit slide. The fragment answers a question the bins slide already asked. |
| 17 | A linear model for the logit — then back to a chance | **FAIL** | This is the first time the logistic equation appears, **after** odds. It also writes the two-predictor model before MLE, before the one-predictor table, and before a human-sized \(\Delta\). The fragment gestures at \(e^{\Delta \beta_1}\) and never computes 1.84. |
| 18 | Example on OJ — probability vs loyalty from this fit | **FAIL** | Fitted curve is real (−2.76 + 6.09 LoyalCH) and it is the picture spine 11 needed. It arrives after odds, with both coefficients already printed, and the 0.3 / 0.7 dots are unlabeled. No `r-stack` from a generic function to this fit. |
| 19 | Do not read β like a Balance slope | **FAIL** | Closest gesture at spine 18, and it misses the lock. Segments at 0.2→0.3 and 0.8→0.9 are unlabeled. Notes say not to read a decimal. From the **rounded** one-predictor coefs the glass already uses, +0.1 loyalty multiplies odds by \(e^{0.609} = 1.84\). \(p\) moves about 0.176 → 0.282 at loyalty 0.2 (\(\Delta p \approx 0.11\)) and about 0.892 → 0.938 at loyalty 0.8 (\(\Delta p \approx 0.05\)). Those two moves are the slide. The title also imports “Balance” from the Credit hour. |
| 20 | What to remember so far | **FAIL** | Two cards and two clicks match the Session 04 checkpoint shape. The cards recap the 35-slide middle: “fit `glm`,” then “read odds multipliers,” then score a visit. Spine 15 sits **before** MLE and before any table. |
| 21 | Fit on OJ — then read carefully | **FAIL** | Empty band in the slot where spine 16 should say maximum likelihood, before a table. |
| 22 | One call — glm with a binomial family | **FAIL** | Code theater the spine deletes. Both models are fit, and `coef(fit2)` is printed, before MLE and before the one-predictor table has a clean slide. The fragment is “probability first,” which is a cutoff tease. |
| 23 | Example on OJ — one predictor, measured coefficients | **FAIL** | −2.76 / 6.09 are the spine 17 numbers. They are the second printing (reveal 18 was the first), the tiny curve is the third S-curve of the deck, and MLE has not been said. |
| 24 | What sentence is a coefficient allowed to support? | **FAIL** | Full-unit \(e^{\hat\beta}\) via `exp(round(coef(fit2), 2))`. LoyalCH’s multiplier is about 602. That is the anti-example of a human-sized \(\Delta\). Association-vs-cause can live in one clause on spine 14 or 18. It does not earn a slide. |
| 25 | Example on OJ — loyalty and price gap together | **FAIL** | −3.25 / 6.40 / 2.86 are locked and useful **later**, inside the hand score. This slide leads with \(e^{\hat\beta}\) including \(e^{2.86} \approx 17.5\), plus a PriceDiff boxplot. Spine 19–20 are “held fixed” and +$0.10 → ×1.33. \(e^{0.286} = 1.33\). |
| 26 | How does R pick those numbers? | **FAIL** | MLE, one English sentence, no derivation. Right weight, wrong place: it follows both tables. The fragment (“Trust `glm`”) throws away the hand score the next act requires. |
| 27 | Example on OJ — loyalty and price, side by side | **FAIL** | Second LoyalCH boxplot and second PriceDiff boxplot. No new number. The spine has no dual-boxplot slide. |
| 28 | One new shopper | **FAIL** | Empty band. Spine 21 is the hand score itself: write \(\eta\), then the probability. |
| 29 | What is this shopper’s chance of buying CH? | **FAIL** | Hero 0.63 is the right probability for LoyalCH 0.5 and PriceDiff +0.2. The arithmetic is missing. Rounded coefs: \(\hat\eta = -3.25 + 6.40(0.5) + 2.86(0.2) = 0.522\), and \(e^{0.522}/(1+e^{0.522}) \approx 0.63\). `predict` confirms the hand score. It does not replace it. The PriceDiff curve at LoyalCH = 0.5 can move to spine 20 or 22. It is not a substitute for \(\eta\). |
| 30 | Example on OJ — three visits, three chances | **FAIL** | 0.63 / 0.35 / 0.92 match the lock and belong on spine 22, after the hand score. Here they are a second prediction slide, and the fragment restates the labels already printed on the bars. |
| 31 | A chance — not a shelf decision yet | **FAIL** | Standalone cutoff slide. The follow-up deletes it. “Always predict CH if \(\hat p > 0.5\)” is on the glass. One deferral sentence belongs in the notes of spine 24. |
| 32 | Can / cannot — after today’s OJ hour | **FAIL** | First piece of the dos/don’ts trilogy. “Pick the right cutoff” is on the glass again. Spine 23 is a short remember-card that returns to the opening OJ question. |
| 33 | When you use logistic for a real brand decision | **FAIL** | Ten dos and don’ts, including “do not ship 0.5” and “do not paste a hit/miss table.” The follow-up removes this trilogy. Session 04’s close is not a practice poster. |
| 34 | What you can do after today | **FAIL** | Five takeaways that restate the 35-slide outline, including “refuse a cutoff” on the glass. Merge any OJ-number recap into spine 23. Cut the rest. |
| 35 | Before next class | **FAIL** | Midterm, homework, ISLR pp. 129–141, and the lab-after-break line can stay. “Hits, misses, and decision cutoffs return…” is on the glass. Spine 24 keeps that sentence in the notes only. |

## Animation gaps

Session 04 clicks on the first section slide and uses fragments to stage a claim before a picture. Three Session 04 slides swap plots with `r-stack` (the forward-stepwise bars, the information-criterion cliff, and shrinkage vs least squares).

This deck:

- **Zero `r-stack`.** Nothing swaps. The curve slide the spine asks for (generic logistic function, then the OJ fit on top of the bins) cannot be built with the current fragment style.
- **Clicks start at reveal 15.** Slides 8–14, which hold every why-not-linear picture (jitter, means, least-squares line, fence, bins, fake sketch), are static walls. The open-block rule only protects slides 1–6. It is not a license for eight more silent slides.
- **13 fragments, 11 of them answer cards.** Each `.today-note` appears after the plot, the table, or the formula is already on screen. That is a spoken answer key, not claim-first animation.
- **The two-card checkpoint (reveal 20) is the only Session 04-shaped click pair**, and it points at the wrong next act.
- **Four section-starts have zero fragments** (reveal 7, 14, 21, 28). A band with one sentence is a divider. Session 04 section slides are where the clicking starts.
- **No figure is inside a fragment.** On the β slide the segments and the least-squares line appear together; the sentence that says the red step is taller arrives on click, after the audience has already seen it.

## Graph gaps

Keepers, if a 24-slide rewrite reuses ink:

- CH vs MM counts, 653 and 417 (reveal 4).
- LoyalCH boxplot with means 0.72 and 0.32 (reveal 9 only — delete the copy on reveal 27).
- Least-squares line with the fence labeled 0.036 and 1.051 (one chart, not the pair on reveal 10 and 11).
- Bin rates 0.12 → 0.96 (reveal 12).
- Fitted \(\hat p\) vs LoyalCH from `glm(y ~ LoyalCH)` (reveal 18 — this is the OJ half of spine 11).
- Three-visit bars 0.63, 0.35, 0.92 (reveal 30 — spine 22, after the hand score).

Missing or illegal:

1. **Fig 4.2-style overlay, `r-stack`.** First frame: the logistic function \(p = e^{\eta}/(1+e^{\eta})\) as a curve in score, or the bins. Second frame: the fitted OJ curve from the locked one-predictor coefs. The deck has neither the stack nor the order.
2. **Invented sketch** (`-2.2`, `4.8`) on reveal 13. Delete it. Do not “fix” it by captioning it harder.
3. **Human-sized loyalty graph.** +0.1 in LoyalCH, odds ×1.84, and the two baselines above (about +0.11 vs about +0.05 in probability under the rounded coefs −2.76 and 6.09). The current segments do not print \(\Delta p\) or the multiplier.
4. **+$0.10 PriceDiff.** Odds ×1.33, other predictors held fixed. No chart and no number. The PriceDiff boxplots (reveal 25 and 27) show a raw association, which is a different claim, and they duplicate each other.
5. **Hand-score line.** \(\eta = 0.522\) is not drawn or written. A `predict` dot at 0.63 is not the hand score.
6. **Triplicated least-squares line** (reveal 10, 11, 19) and **triplicated fitted S** (reveal 13 sketch, 18, 23). One fence picture, one fitted curve.
7. **Full-unit odds table** (about ×602 and ×17.5) will be read as the effect size. Replace it. Do not leave it in an appendix slide.

`fig-height` is set on every chunk (3.50–4.20). That satisfies the attribute. It does not prove the frame holds the slide. The tight candidates are reveal 8, 11, 12, and 30: a figure at least 4.0 inches tall in a column that also carries code or a formula, plus a prompt under the columns, on a 720-pixel slide. Those frames were not measured in a browser. After the rewrite, set `fig-height` to the picture that remains, and look at the 1280×720 frame before calling overflow clean.

## Ranked fixes

Do these in order. Pasting the missing sentences onto the 35-slide file still fails.

1. **Rewrite `session05-logistic-regression.qmd` to the 24-slide spine.** Target render count: 24 `<section>` elements. Delete eleven slides worth of scaffolding. Do not ship a 25–34 slide “compromise.”
2. **Put the acts in the locked order.** Function and Fig 4.2 overlay (11) before odds (12–13). MLE band (16) before the −2.76 / 6.09 table (17). Hand score (21) before the three-visit bars (22).
3. **Delete these slides outright:** empty bands as currently written (7, 14, 21, 28); the second fence slide; the fake sketch; the solo logit slide; the early two-predictor equation; the `glm` call slide; the full-unit \(e^{\beta}\) sermon; both duplicate boxplot slides; the cutoff slide; can/cannot; dos/don’ts; the five-bullet takeaway list.
4. **Print the human-sized effects from the locked rounded coefs.** +0.1 LoyalCH → odds ×1.84, with \(\Delta p\) at two baselines (about 0.11 vs about 0.05 under −2.76 and 6.09). +$0.10 PriceDiff → odds ×1.33, loyalty held fixed. Remove ×601 and ×17.5 from the glass.
5. **Write the hand score on the prediction slide.** \(\hat\eta = -3.25 + 6.40(0.5) + 2.86(0.2) = 0.522\), then \(0.63\), then `predict(..., type = "response")` as the check. Then the three visits: 0.63, 0.35, 0.92.
6. **Rebuild animation to the Session 04 pattern.** Section slides 7, 11, 16, 19, and 21 carry the idea under the weaver band. Fragments state the claim, then reveal the plot. The curve slide uses `r-stack` for the function → OJ-fit swap. Answer-only `.today-note` clicks are not a substitute.
7. **Move every cutoff, hit/miss, and 0.5-as-a-rule sentence off the glass.** One deferral line in the notes of slide 24. Leave the roadmap’s “ROC, cutoff” tools cell as Session 04 wrote it. Do not add a ROC picture, a confusion matrix, or a Default example.
8. **Replace the agenda (current slide 6) so a speaker cannot walk back into the 35-slide hour.** The five beats should be: why the line breaks on this file, the curve and the odds, how `glm` chooses \(\beta\), a human-sized reading of loyalty and price, one hand-scored visit.
9. **Correct `BUILD_NOTES.md` and `READY_FOR_ACADEMIC.md`.** They still instruct the next person to treat 35 slides as the lock. After a real rewrite they should say 24 sections and point at this audit. Until the `.qmd` is 24 slides, those notes stay wrong.
10. **Re-render and count sections before anyone calls the deck ready.** `quarto render` from `slides/session05-logistic-regression/`, not from the website project. A count other than 24 is still a fail. Then check the curve stack, the ×1.84 / ×1.33 lines, and the \(\eta = 0.522\) line on the 1280×720 frame.

Numbers worth carrying into the rewrite, all already locked in the setup chunk: \(n = 1070\); CH 653 / MM 417; LoyalCH means 0.72 and 0.32; `lm` fitted range 0.036 to 1.051; bin rates 0.12, 0.28, 0.53, 0.77, 0.96; one predictor −2.76 and 6.09; two predictors −3.25, 6.40, 2.86; visits 0.63, 0.35, 0.92. Add, from those rounded coefs: odds ladder 0.61 ↔ 1.56; ×1.84; ×1.33; \(\eta = 0.522\).

`theme_mlba` can stay. The color check passed.
