# Session 05 deck audit — second pass

**Verdict: EXCELLENT. Teach this file.**

The 24-slide rewrite replaces the deck that `DECK_AUDIT_vs_S04.md` failed. This pass judged the new source and the rendered HTML against the six hard checks. Nothing in the `.qmd` was patched.

| | |
|---|---|
| Deck | `slides/session05-logistic-regression/session05-logistic-regression.qmd` |
| Render checked | `session05-logistic-regression.html` — 24 `<section>` elements |
| Commit audited | `2949962` on `cursor/session05-logistic-slides-b9ac` (PR #3) |
| Prior fail | `_instructor/DECK_AUDIT_vs_S04.md` (35 sections, at `9330781`) |
| Outline | `BUILD_NOTES.md` — the 24-slide lock |

Glass text was read with speaker notes (`aside.notes`) removed. Layout was measured in headless Chrome at the 1280×720 slide box, after figures loaded and with every fragment shown.

## Hard checks

| # | Check | Result |
|---|---|---|
| 1 | Exactly 24 reveal sections | **PASS.** 24 `<section>` open tags, 24 closes. Title plus 23 content slides. |
| 2 | ISLR order: fence/bins → logistic function first → odds → MLE → table → hand score → \(\hat p\) | **PASS.** See the order below. |
| 3 | Hand \(\eta = 0.522\) before `predict` 0.63; human \(\Delta\) +0.1 / +$0.10; no full-unit odds monsters | **PASS.** |
| 4 | Open 1–6 have no fragments; `{.section-start}` on the act openers; `.r-stack` where the notes claim a swap | **PASS.** |
| 5 | No cutoff / can-cannot / dos-don’ts / confusion / ROC / Default lesson on the glass | **PASS.** One inherited roadmap cell, recorded below. |
| 6 | Session 04 look: `theme_mlba` colors, figure sizing, formula fragments | **PASS.** |

## 1. Twenty-four sections

Reveal index, title included:

1. Title — Logistic regression
2. Where Cas and Abdullah left us
3. Where are we on the grid?
4. Can we predict which OJ brand a shopper buys?
5. What is in the file?
6. What we will do today
7. Brand choice is a probability, not a line `{.section-start}`
8. Example on OJ — loyal shoppers and CH
9. Example on OJ — a fitted “chance” of 1.05
10. Example on OJ — CH share by loyalty bin
11. The curve stays between 0 and 1 `{.section-start}`
12. Odds come out of that function
13. This file’s share, on the odds ladder
14. A coefficient multiplies the odds, not \(p\)
15. What to remember — and what we do next
16. R picks the coefficients that fit these purchases `{.section-start}`
17. Example on OJ — loyalty alone
18. Example on OJ — same +0.1, two changes in \(p\)
19. Add the price gap, loyalty held fixed `{.section-start}`
20. Example on OJ — ten cents on the price gap
21. Score one visit by hand `{.section-start}`
22. Example on OJ — same loyalty, opposite price
23. What to remember
24. Before next class `{.next-slide}`

## 2. Order

| Beat | Slide | What is on the glass |
|---|---|---|
| Fence | 9 | `lm` fitted range about 0.036 to 1.051 |
| Bins | 10 | CH rates 0.12, 0.28, 0.53, 0.77, 0.96 |
| Logistic function first | 11 | \(p = e^{\eta}/(1+e^{\eta})\) against the score, then the fitted OJ curve |
| Odds from that function | 12 | odds \(= e^{\eta}\) |
| Odds ladder | 13 | 0.61 ↔ 1.56 |
| \(\beta\) multiplies odds | 14 | \(e^{\beta_1 \Delta}\), before any estimated multiplier |
| Checkpoint | 15 | two cards, two clicks, still before a table |
| MLE | 16 | maximum likelihood, before any coefficient |
| Table | 17 | −2.76 and 6.09 |
| Human loyalty step | 18 | +0.1 → ×1.84 |
| Price gap, held fixed | 19 | −3.25, 6.40, 2.86 |
| Human price step | 20 | +$0.10 → ×1.33 |
| Hand score | 21 | \(\hat\eta = 0.522\), then \(\hat p \approx 0.63\), then `predict` |
| \(\hat p\) on three visits | 22 | 0.63, 0.35, 0.92 |

The function slide does not print −2.76 or 6.09. Those numbers first appear on slide 17, after MLE. The hand-score arithmetic uses the rounded two-predictor coefficients already on slide 19.

## 3. Hand score and the human-sized steps

Slide 21, in click order:

- On arrival: \(\hat\eta = -3.25 + 6.40(0.5) + 2.86(0.2) = 0.522\).
- First fragment: \(\hat p = e^{0.522}/(1+e^{0.522}) \approx 0.63\).
- Second fragment: `predict(..., type = "response")` prints 0.63.

Slide 18: a **+0.1** step in LoyalCH multiplies the odds by **1.84**. At 0.20 the chance goes about 0.18 → 0.28 (rise about 0.11). At 0.80 it goes about 0.89 → 0.94 (rise about 0.05). The two pictures swap in an `.r-stack`.

Slide 20: raise PriceDiff by **$0.10**, loyalty held fixed. Odds × **1.33** from \(e^{0.10 \times 2.86}\). At LoyalCH 0.5 the chance goes about 0.49 → 0.56.

No full-unit odds monster is on the glass. The strings 601, 602, 17.46, and \(e^{6.09}\) do not appear outside speaker notes. Slide 17 asks whether 6.09 is “+6.09 probability” from loyalty 0 to 1. That question refuses the full-unit probability reading. The worked multiplier is the +0.1 step on the next slide.

## 4. Clicks, bands, and stacks

Slides 1–6 contain zero `.fragment` nodes. The Logistic row is static `class="here"`.

`{.section-start}` is on the five act openers only: 7, 11, 16, 19, 21. Each is a weaver band on the heading with the act under it (a formula, a definition, or the hand score), not a blank navy frame and not a one-sentence divider.

`.r-stack` appears three times, which is what `BUILD_NOTES.md` claims:

- Slide 11: logistic function against the score, then the fitted OJ curve with the 0/1 purchases.
- Slide 18: the +0.1 step at LoyalCH 0.20, then the same step at 0.80.
- Slide 22: two bars (0.63 and 0.35), then three (add 0.92).

Plot slides state the claim, then reveal the figure.

## 5. What stays off the glass

Searched on the glass, notes excluded:

- No confusion matrix, no Default example, no Credit / Carseats / heart story.
- No can/cannot card and no dos/don’ts poster.
- Slide 24’s visible list is midterm review, Homework 2 on the schedule, ISLR Chapter 4, and the lab after fall break. Hits, misses, and decision cutoffs are in that slide’s notes only.
- The word pair **ROC, cutoff** appears once, in the Thresholds tools cell of the course grid. The same cell is in the published Session 04 HTML. It is the later week on the roadmap, not a lesson. The caption says thresholds stay later.

## 6. Session 04 look

Colors in `theme_mlba` match the reveal theme and the Session 04 ink: weaver `#182C4B`, red `#C41230`, iron `#6D6E71`, paper `#F4F6F8`, teal `#008F91`. Canvas is 1280×720, margin 0.04, `transition: none`, linear navigation, `theme: simple` plus `mlba-reveal.css`.

Every `ggplot` chunk sets `fig-height` (3.35–3.90). In Chrome, after images loaded, every section had `scrollHeight` equal to `clientHeight` (720). No element crossed the right or bottom edge of the slide box. The tightest bottom margin was slide 10, about 115 layout pixels of room above the slide edge, with the prompt still clear of the footer. Rendered figure heights sat between about 360 and 430 pixels. Code blocks did not scroll (`scrollWidth` equal to `clientWidth`).

Formula callouts use the same `.formula` box as Session 04 (white card, weaver left rule). The first section slide shows the 0/1 definition, then two fragments. The curve slide shows the logistic equation, then the `.r-stack`. The hand-score probability is itself a formula fragment that arrives after \(\eta = 0.522\).

## Residuals that do not fail

- Slide 10 prints the five bin rates in a small table and in `tapply`, then reveals the bars. The numbers match, and the frame holds them.
- Slide 19 is a section opener with no click. The act is on the glass: held fixed, then −3.25 / 6.40 / 2.86. The +$0.10 reading is the next slide.
- The roadmap cell “ROC, cutoff” is the Session 04 tools label. Deleting it would make this grid disagree with Monday’s grid.

`BUILD_NOTES.md` already records 24 slides, the human-sized steps, and the notes-only cutoff line. It matches this render.
