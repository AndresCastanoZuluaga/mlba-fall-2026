# E2E_12_36_MAP_CHECK_GROK2 — Session 05 slides 12–36

**Date:** 2026-09-30  
**Role:** Second independent auditor. Did not write the map. Did not treat `E2E_12_36_MAP_CHECK.md` as evidence.  
**Map under audit:** Step 1 file `E2E_12_36_MAP.md` (the attached map). It is not on this branch. This file does not rewrite it.  
**Grading key:** `PLAN_CRITIQUE_pedagogy.md`, section **Required fidelity checklist** (every PPTX row 12–36), plus the **Matrix honesty** and **Later-week boundary** paragraphs that follow that table.  
**Numbers:** `LOCKED_OJ.md`, copied onto this branch at `_instructor/LOCKED_OJ.md`.  
**Also read:** `REBUILD_PLAN_IMPROVED_v3.md` (approved plan). Used to see whether a map sentence matches an allowed placement. Not used to waive a checklist cell.  
**Quarto:** not edited.  
**Fail-closed rule:** one On-OJ cell that an outliner can skip while still obeying the map fails the map. A non-empty location cell is not a pass.

The first check’s **VERDICT: PASS** is not adopted. Its criterion “every OJ location is non-empty” is the soft test this pass replaces.

---

## Headline checks

| Check | Result | Evidence in the map |
|--|--|--|
| Exactly 25 rows, PPTX 12–36, no gaps or duplicates | **PASS** | Row ids 12, 13, …, 36. Count 25. Unique 25. |
| Status OUT never used as a row status | **PASS** | Statuses are KEEP 12, REPLACE STORY 12, SPLIT 1. The word OUT appears only in “OUT forbidden” and in the self-check. |
| OJ location non-empty | **PASS** (weak) | All 25 location cells have prose. Sufficiency is graded below. Row 15 fails sufficiency. |
| Two cutoff moves; loan 0.3 / −0.847 not required | **PASS** | Row 20: predict yes if \(\hat p > 0.5\), with the model, before fit. Row 26: SCORE **0.522** → \(\hat p\) ≈ **0.63**; probability threshold ↔ score cut; this visit is above SCORE > 0. Leave cell and intro send **0.3 / −0.847** out. |
| LPM three problems + ~0.036–1.051 | **PASS** | Row 18 names heteroskedastic errors, non-normal two-valued errors, and predictions outside [0, 1]. Same row spends the OJ line **0.036 to 1.051** on the third. No variance formula. |
| Odds ladder + extreme + 0.61→1.56 | **PASS** | Row 21: inverse \(p = \mathrm{odds}/(1+\mathrm{odds})\); equal odds → 0.5; 4 to 1 → 0.8; 1 in 100 → 0.01; definitional row **0.95 → 19**; anchor mean fitted \(p\) ≈ **0.61** → odds ≈ **1.56**. |
| Public SCORE, then `predict()`; 0.63 vs 0.35 | **PASS** | Row 26: LoyalCH **0.5**, PriceDiff **+0.2**, SCORE written in public, then `predict()` as receipt. Same loyalty, different price → ≈ **0.63 vs ≈ 0.35**. |
| One-SD ~7.2 / ~2.2, not raw 6.40 vs 2.86 | **PASS** | Rows 28–29: SDs ~**0.31** and ~**0.27** before the formula; factors ≈ **7.2** and ≈ **2.2**. Row 25 and the intro forbid ranking raw **6.40 vs 2.86**. Row 29 ranks by the one-SD factors instead. |
| Accuracy 32–36 all IN | **PASS** | All five are **KEEP**. No OUT, no Week-7 deferral, no notes-only mention. See the accuracy hunt below. |

Arithmetic checked against the lock, not just copied: \(0.61/0.39 ≈ 1.56\). Fit2 \(-3.25 + 6.40(0.5) + 2.86(0.2) = 0.522\). \(\mathrm{e}^{0.522}/(1+\mathrm{e}^{0.522}) ≈ 0.63\).

---

## Row-by-row against the checklist

| PPTX | Result | Why |
|--:|--|--|
| 12 | **PASS** | Five questions in order, accuracy included. Return to question 5 is in this row and again at row 32. Store language (CH vs MM, this file) is in the keep cell. |
| 13 | **PASS** | SPLIT into a navy band on the first content slide of the model act, after the four questions and the means. Blank navy divider is forbidden. An outliner can place the band. |
| 14 | **PASS** | Four model questions. Accuracy parked, not deleted. Spoken line: come back to accuracy after the model. Agenda that ends at “score a visit” is in the leave cell. |
| 15 | **FAIL** | Checklist On OJ: a few purchase rows, **or** the 0/1 cloud against LoyalCH, and Y = 1 for CH. The map requires Y = 1 and the base rate, and marks the only picture **optional**. It never requires the few rows. An outliner who obeys the cell can put a definition sentence on the glass and skip both substitutes for the heart-age table. Punch list item 1. |
| 16 | **PASS** | OJ location has ≈ 0.72 vs ≈ 0.32, “what is wrong with stopping?”, then the straight-line try. The answer “the gap is not a probability for a new person at a stated X” is in this row’s teaching-moves cell, and the leave cell does not drop it. Clarity note only (below). |
| 17 | **PASS** | `lm`-style line on Purchase (CH = 1), with LoyalCH, as a line on 0/1, not yet a probability. Keep cell: OLS looks available, then retract. |
| 18 | **PASS** | All three problems in words. Numbers only on the third. Fence-only slide is in the leave cell. |
| 19 | **PASS** | Same axes, recomputed on LoyalCH, fences at 0 and 1, endpoints 0.036 and 1.051 called out. Disease cartoon is not the figure. |
| 20 | **PASS** | \(p\) in (0, 1); 0.5 rule here (cutoff 1); formula; odds; logit; β as a log-odds change. Tenth-of-LoyalCH warning is for the later applied step, which is what the checklist asks. |
| 21 | **PASS** | Inverse, three spoken conversions, odds = 1 → p = 0.5, one exploding row 0.95 → 19, OJ anchor 0.61 → ≈ 1.56. Checklist asks for one extreme row, not the whole source table. |
| 22 | **PASS** | Fitted OJ curve. Axis in chances of CH. “Probability of disease” leaves. |
| 23 | **PASS** | fit1 ≈ −2.76 and 6.09. At LoyalCH = 0, \(\hat p\) ≈ 0.06. Direction and log-odds change. Asks for a more interesting look at \(p\). Small p-value is not importance. |
| 24 | **PASS** | Hand arithmetic is kept. Landing the full plug-in on row 26 is the checklist’s own rule. One-predictor plug-in stays optional and locked. Balance $1,000 → 0.00576 is in the leave cell. |
| 25 | **PASS** | +0.1 LoyalCH on fit1: × ≈ 1.84 (+84%), \(\hat p\) about 0.28 → 0.42 and 0.82 → 0.89. Fit2: +0.1 LoyalCH × ≈ 1.90; +$0.10 PriceDiff × ≈ 1.33. \(\Delta p\) depends on the start. Marginal effects named and left for the lab. |
| 26 | **PASS** | Public SCORE, conversion to \(p\), naive rule ≡ SCORE > 0, a different probability cutoff is a different score cut. Loan story numbers are in the leave cell. 0.63 vs 0.35 is in this cell. |
| 27 | **PASS** | β is not a unit add to \(p\). The two +0.1 chords. Fit2 read held fixed (−3.25, 6.40, 2.86). 6.09 → 6.40 keeps its sign. No sign-flip story. No one-unit LoyalCH sentence. |
| 28 | **PASS** | “Which matters more?” depends on coefficient and spread. Locked SDs shown before the ranking formula. |
| 29 | **PASS** | Rank by \(\exp(\beta \times \mathrm{sd})\). ≈ 7.2 and ≈ 2.2. “Say what those factors mean for the odds” is the checklist’s own On-OJ sentence. |
| 30 | **PASS** | Four checks on the glass. Both predictors stay. SCORE is the linear predictor already computed. Importance points at 7.2 vs 2.2. |
| 31 | **PASS** | Four takeaway sentences, with this file’s SCORE and the two one-SD factors. Loose “percent change” tightened to “multiplies the odds by \(\exp(\beta\cdot\Delta)\).” |
| 32 | **PASS** | 2×2 with TP, FN = Type II, FP = Type I, TN. Accuracy, precision, sensitivity, specificity, each with a one-line “percent of …” reading. CH is the positive class. Precision and sensitivity/recall scripted on CH. Opens by returning to question 5. Leave cell forbids a notes-only mention and a Week-7 deferral. |
| 33 | **PASS** | Names slide 36 will ask (sensitivity, specificity, precision, recall, hit rate, false discovery rate), plus false positive rate and prevalence in one clause. Readable subset. Wikipedia wall listed in the leave cell. Deleting the slide because the picture is crowded is also in the leave cell. |
| 34 | **PASS** | TPR vs FPR as the threshold moves. Diagonal = chance. Top-left bow. AUC = 1 is perfect separation. Minimum is definitions plus a schematic or OJ curve, labeled with what it was computed on. Word “ROC” alone is in the leave cell. |
| 35 | **PASS** | AUC in [0, 1], many thresholds, 0.5 ≈ guessing, closer to 1 is better, Gini = \(2\times\mathrm{AUC}-1\). One formula. |
| 36 | **PASS** | Five closing questions, including recall, hit rate, FDR, ROC, why ROC is popular, lift in the top decile, and the summary sentence (test-set language kept). “Ask them.” Lift is one definition tied to sort-by-score. Remember-card and lift-chart lab are in the leave cell. |

**Matrix honesty.** **PASS.** Row 32: no invented holdout; in-sample or worked visits labeled. Row 36 keeps the test-set sentence. The three shopper probabilities are not turned into a test-set accuracy.

**Later-week boundary.** **PASS.** Intro and rows 32–36: this hour teaches the matrix, the rates, the threshold, ROC, AUC, Gini, and the lift definition. Cost-weighted cutoff choice and the long R lab stay later. Both “defer the introduction” and “run the cost lab” are blocked by that wording plus the leave cells.

**Open order.** **PASS** except where step 5 inherits the row 15 hole. Title → pair → grid → five questions → OJ case → codebook (Purchase, LoyalCH, SalePriceCH, SalePriceMM, PriceDiff only) and the two prompts → four model questions with accuracy parked → means 0.72 vs 0.32. That order matches the approved plan. The case does not replace the question board.

---

## Soft-failure hunt

### 1. Vague OJ locations — **FAIL** (row 15 only)

Non-empty was the first check’s test. The test used here: can an outliner place the checklist’s On-OJ move without guessing, and without a legal way to skip it?

- **Row 15 fails.** “Optional 0/1 cloud” plus no requirement for a few purchase rows. The keep cell (“binary Y on glass”) is satisfied by the sentence “Y = 1 for CH” alone. That is the heart table’s move, thinned until the concrete display is gone.
- **Row 13 does not fail.** “Navy band, not its own slide, after the four questions and the means, before the model answer” is enough to place.
- **Rows 22 and 35 do not fail.** The picture and the Gini formula are in those rows. The location cells are short because the teaching-moves cells carry the content.
- **Row 24 does not fail.** “Prefer … at row 26” matches the checklist sentence “the worked visit waits until both predictors are in the score.” Row 26 then requires the arithmetic. The method is not dropped.
- **Row 26 “Later” for 0.63 vs 0.35 does not fail.** The comparison is inside the row 26 cell, so it stays in the scoring act.

### 2. Moves buried only in the intro — **not a fail**

Cutoff 1, cutoff 2, the 0.036–1.051 line, the 7.2 / 2.2 factors, and “accuracy is in this hour” are all inside their rows as well as the intro. The codebook and the two prompts are not a PPTX 12–36 row; the intro is the right home, and rows 12 and 14 point at them. The row 15 picture is not buried in the intro. The intro’s step 5 never mentions it. Fixing the row without fixing step 5 would leave the open order thinner than the row. Punch list item 1 therefore edits both.

### 3. REPLACE STORY that drops the method — **FAIL** on row 15; not elsewhere

Checked every REPLACE STORY keep cell (15, 16, 17, 19, 20, 22, 23, 24, 25, 26, 28, 29). The method survives on 16–17, 19–20, 22–26, and 28–29. Row 15 is the drop: the heart-age table leaves, and the map does not require either OJ substitute the checklist names.

### 4. Accuracy still feels deferred — **not found**

Rows 32–36 are KEEP, with the glass content in the row (matrix and four rates, extended names plus FPR and prevalence, ROC curve with diagonal and bow, AUC and Gini, five questions including lift). Row 32’s leave cell names the two illegal cuts: notes-only, and Week-7 deferral. “Introduces the tools” is the plan’s word for teaching them this hour. It is paired with that leave cell, so it is not a preview. Parking accuracy on row 14 until after the model is the checklist’s order, not a deferral to another week. Cost-weighted search staying later is the later-week boundary, and it is stated as that boundary.

### 5. Session-04-length temptation to cut 32–36 — **not found**

The map has no slide budget and no “fit the hour” sentence. Slide 13 is the only SPLIT, and it is the empty section break the plan allows to fold. Slides 32–36 are five KEEP rows with different jobs (open on question 5, extended names, ROC, AUC/Gini, five closing questions). Row 33 explicitly leaves behind “deleting the slide because the source picture is crowded.” Nothing in the map invites collapsing 32–36 to protect a 24-slide length.

---

## Where the first check is reversed

| First-check criterion | This pass |
|--|--|
| 3. Non-empty OJ location → PASS | Non-empty is true. **Sufficient** location is **FAIL** on row 15. |
| 11. Pedagogy must-keeps present → PASS | Row 15’s On-OJ cell is not required by the map. The crosswalk treated “binary Y on glass” as the whole move. |

Headline criteria 1, 2, 4, 5, 6, 7, 8, and 9 were re-checked and still pass. Titles were checked against the critique’s recorded titles for 12–24 and 26–36 (they match). The PPTX is not in this workspace, so this pass does not adopt the first check’s python-pptx claim. Slide 25’s long title is the map’s PPTX claim; the critique’s narrative table uses a short label and does not contradict it. Titles are not a fail item.

---

## Punch list — what the mapper must change in `E2E_12_36_MAP.md`

Do not edit the Quarto deck. Do not mark row 15 OUT. Do not drop the base rate.

### 1. Row 15 — require the concrete binary display

The checklist On-OJ cell is: “A few purchase rows, or the 0/1 cloud against LoyalCH. Define Y = 1 for CH.”

**Intro step 5.** Replace the current step with:

> **OJ decision / case** — binary brand on the glass before any formula: either a few purchase rows (Y coded 0/1) or the 0/1 cloud against LoyalCH. One of those two is required. Y = 1 for CH. Base rate 653/1,070 CH. Why “most buy CH” is not this shopper’s chance.

**Row 15 OJ location.** Delete “optional” on the cloud. The cell must say that the glass shows, before any formula, **either** a few purchase rows **or** the 0/1 cloud against LoyalCH, plus Y = 1 for CH and the base rate 653/1,070. If the few rows are the choice, the cloud may be skipped. If the cloud is the choice, the few rows may be skipped. Skipping both must no longer comply with the map.

**Row 15 keep cell.** Replace “Keep: binary Y on glass before any model” with a keep line that names that same required display. “Y = 1 for CH” alone is not the keep.

Leave the heart-age table behind. That part of the row is already right.

Nothing else in the map has to change to clear this fail.

---

## Checked, and not part of this fail

These are tighter wordings. They are not reasons for the verdict. A rewrite that only does these, and leaves row 15 optional, still fails.

- **Row 16.** Copy into the OJ location: the 0.72 vs 0.32 gap is not a probability for a new shopper at a stated loyalty. The sentence is already in that row’s teaching-moves cell (“stated X”). Putting it in the location cell stops it being read as heart-story residue.
- **Row 17.** Drop “e.g.” Write `lm(y ~ LoyalCH)` as a line on 0/1. LoyalCH is already the example, and rows 18–19 lock that line.
- **Row 25.** Write (+90%) next to × ≈ 1.90 and (+33%) next to × ≈ 1.33. The multipliers are already the lock.
- **Row 26.** Name the second visit as LoyalCH 0.5 and PriceDiff −0.2 → ≈ 0.35, so nobody invents a gap to hit 0.35. The third locked shopper ≈ 0.92 may illustrate the 0.5 rule later. The checklist does not require it on this row.
- **Row 13.** The band can be named as the first slide after the means (the straight-line entry, row 17). “Model act” is already placeable.

---

## Lock file on this branch

`_instructor/LOCKED_OJ.md` is the 2026-09-30 copy. The first line supersedes any deferral of the confusion matrix, ROC, or cutoff for this hour. The measured numbers under it stay the lock. The older sentence in the second paragraph (“no confusion matrix / cutoff digression this hour”) is still printed there and is **not** authority. Do not quote it to cut rows 20, 26, or 32–36.

---

**FAIL item count:** 1 (row 15, including intro step 5, which describes that row’s job)

**VERDICT: FAIL**
