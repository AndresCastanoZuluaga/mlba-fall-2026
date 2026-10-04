# Review session plan

Monday 5 October 2026, 2:30–3:45, CMB 1190. Review only. Midterm Wednesday 7 October, 75 minutes, in class, closed notes, no electronic devices, no AI. Course 70-467, Fall 2026, CMU-Q.

The make-up for the cancelled Wednesday 30 September class is a separate Monday sitting. It is not this hour and it is not in the packet.

# Scope

There is no posted midterm-prep announcement in this repository. Searched: working tree, `origin/main`, `origin/gh-pages` (including history), and the other remote branches. Nothing is named as an announcement, a midterm-prep note, or a review sheet. The notes index on the published site still says the week 6 review sheet is TBD.

Paths that were checked and are absent:

- `announcements/midterm-prep.md`
- `announcements/midterm-prep.qmd`
- `notes/midterm-review.qmd`
- `notes/week06-review.qmd`

The syllabus tells students to watch Canvas announcements. No Canvas announcement is copied into this repo. That is a real gap. This plan cannot treat a missing file as a boundary. The boundary used here is the exam sentence that is actually posted, the files dated before 30 September, and the instruction for this review: logistic regression stays out.

Posted exam sentence, `syllabus.qmd` and the same paragraph in `origin/gh-pages:syllabus.html`:

> The exam covers weeks 1–5 only: linear regression, metrics, train/test and generalization, regularization, and cross-validation/model selection.

That sentence is the scope. It names cross-validation and model selection. It does not name logistic regression.

The live schedule contradicts it. `origin/gh-pages:schedule.html` (built 28 September 2026) sets week 5 as logistic regression, Monday 28 September concepts and Wednesday 30 September lab, and describes Monday 5 October as “Weeks 1–5 (incl. logistic).” The homepage phase that is active through 4 October lists logistic regression in the pre-midterm line. The source schedule on `main` (`schedule.qmd`) is older: week 5 is cross-validation, Wednesday 30 September is a CV lab, and logistic regression is after fall break. The published notes index is still on that older map (week 5 as CV, week 7 as logistic).

What students can open, and what this hour may use:

| When | What was posted | Where |
| --- | --- | --- |
| Mon 24 Aug | Introduction | `slides/70-467_MLBA_2026-08-24_Introduction.html` |
| Wed 26 Aug and Mon 31 Aug | Linear regression, through interactions and the regression checks. Quiz 1 at the end of Monday. | `slides/70-467_MLBA_2026-08-26_LinearRegression.html` |
| Before that Monday | Week 1 notes, with the ISLR pages below | Last copy is `notes/week01-linear-regression.qmd` at gh-pages commit `fbab52d`. Removed from the tip in `54c1e8b`. The notes index still links to the dead file. |
| Wed 2 Sep | Lab 1, Toyota Corolla asking prices | `origin/gh-pages:labs/Lab01-Regression/lab01-corolla-v2.qmd`. Not on `main`. |
| Mon 7 Sep | Train/test, bias and variance, leakage, validation set, LOOCV, k-fold | `slides/70-467_MLBA_2026-09-07_EvaluatingModelAccuracy.html` |
| Wed 9 Sep | Lab 2, Ames sales | `origin/gh-pages:labs/Lab02-Evaluation/lab02-ames.qmd`. Not on `main`. |
| Wed 16 Sep | Best subset, stepwise, Cp / AIC / BIC / adjusted R², CV for model size, ridge, lasso | `slides/70-467_MLBA_2026-09-16_ModelSelectionAndRegularization.html` |
| Mon 21 Sep | Lab 3, Credit / QNB selection. Hold out 120. Search inside the 280. | `origin/gh-pages:labs/Lab03-Selection/lab03-credit.qmd`. Not on `main`. |
| Wed 23 Sep | Lab 4, ridge and lasso on browsing shares. Quiz 2 at the end of class. | `origin/gh-pages:labs/Lab04-Regularization/lab04-browser.qmd`. Not on `main`. |

Homework already uses the same methods and is fair recall, not a new topic: HW1 garment productivity (linear regression), HW2 airfares (selection and regularization). Both are on `origin/gh-pages` under `hw/`, not on `main`. HW2 is due Sunday 4 October.

Assigned readings that were actually written down for students:

- ISLR, 2nd ed., chapter 1, pages 1–6. Introduction deck and week 1 notes.
- ISLR chapter 2, pages 15–22. Same.
- ISLR chapter 3, pages 59–70. Introduction deck. Week 1 notes add pages 63–68 for the standard error, the interval, and the t statistic.
- ISLR chapter 3, pages 71–82 and 83–86. Week 1 notes. Stop before page 87.
- Lab 2 points at ISLR chapter 5 as the source of the validation set, LOOCV, and k-fold. No page range is posted.
- The 16 September deck cites ISLR chapter 6 in the speaker notes (forward algorithm, p. 230; the ridge path in the spirit of Figure 6.4). The slide says not to put book section numbers on the glass. No student reading list for chapter 6 was posted. Weeks 2–5 notes were never built.

Interactions on pages 87–103 were taught on 31 August. The week 1 notes say those pages were not assigned. The packet uses the three interactions from the slides. It does not send students into unread pages.

# Topics

1. What a regression is for, and when a slope is an association.
2. Simple linear regression: least squares, the coefficient table, residual standard error, R².
3. Statistical significance and economic size.
4. Multiple regression, including a coefficient that moves when another predictor is added.
5. Qualitative predictors and the baseline.
6. Confidence interval versus prediction interval.
7. Interactions that were taught, and the checks on the line.
8. MSE, RMSE, and RSE. Training error versus test error. Bias, variance, overfitting.
9. Leakage.
10. Validation set, LOOCV, and k-fold. Which number is reported.
11. Best subset, forward, and backward. Why training RSS cannot choose the size.
12. Cp, AIC, BIC, and adjusted R². Cross-validation for the size. The one-standard-error rule. Why a p-value is the wrong tie-break.
13. Ridge and lasso. Standardization. Choosing λ. A lasso zero is not “no association.”

# Formulas and questions

Formulas below are the ones written on the posted slides. A later packet that swaps in a different textbook form has the wrong formula, even if that form is standard somewhere else.

## What a regression is for

From the 26 August deck. A quantitative response is

$$Y = f(X) + \varepsilon.$$

$f$ is unknown. $\varepsilon$ has mean zero and is independent of $X$. Prediction produces $\hat Y = \hat f(X)$. Explanation asks how $Y$ is connected to $X$. The same $\hat f$ is a causal effect only if $X$ was randomized or as-if random. Linear regression restricts $f$ to

$$Y = \beta_0 + \beta_1 X_1 + \cdots + \beta_p X_p + \varepsilon.$$

The four uses on that deck: how the variables relate; how $Y$ is associated with $X$; what happens to $Y$ if $X$ is changed; what sales we guess for a store with a given $X$. The 24 August deck had three cards (describe, explain, predict). The later deck is the one to use, with causation kept on the randomized-X card.

Questions:

- Headquarters has 400 stores and is considering a price cut. Which of the four uses is that question, and what would have to be true before $\hat\beta_{\mathrm{Price}}$ is the effect of the cut?
- Stores chose their own prices. What sentence is honest about $\hat\beta_{\mathrm{Price}}$?
- A stock return coded 1 or 0 was named as classification and deferred. Leave it there.

## Simple linear regression

Population line and fitted line, from the same deck:

$$Y = \beta_0 + \beta_1 X + \varepsilon, \qquad \hat y_i = \hat\beta_0 + \hat\beta_1 x_i, \qquad e_i = y_i - \hat y_i.$$

$\beta_0$ is $\mathrm{E}(Y \mid X = 0)$. $\beta_1$ is the average change in $Y$ associated with a one-unit change in $X$. Least squares minimizes

$$\mathrm{RSS} = \sum_{i=1}^{n}(y_i - \hat\beta_0 - \hat\beta_1 x_i)^2 = \sum_{i=1}^{n} e_i^2.$$

Coefficient table, as taught: estimate $\hat\beta$; standard error, the estimated standard deviation of $\hat\beta$ across samples of this size; $t = \hat\beta / \mathrm{SE}(\hat\beta)$; p-value under $H_0{:}\ \beta = 0$.

For the simple slope, if the errors are uncorrelated with constant variance $\sigma^2$,

$$\mathrm{SE}(\hat\beta_1)^2 = \frac{\sigma^2}{\sum_{i=1}^{n}(x_i - \bar x)^2}.$$

Approximate 95% interval: $\hat\beta_1 \pm 2\,\mathrm{SE}(\hat\beta_1)$. On Sales against Price, $\mathrm{SE} = 0.0054$ and the interval is $[-0.064,\ -0.042]$.

$$H_0{:}\ \beta_1 = 0 \quad\text{versus}\quad H_a{:}\ \beta_1 \neq 0, \qquad t = \frac{\hat\beta_1}{\mathrm{SE}(\hat\beta_1)}.$$

On that fit, $t = -9.91$.

Residual standard error for the simple line, and R²:

$$\mathrm{RSE} = \sqrt{\frac{\mathrm{RSS}}{n-2}}, \qquad \mathrm{TSS} = \sum_{i=1}^{n}(y_i - \bar y)^2, \qquad R^2 = 1 - \frac{\mathrm{RSS}}{\mathrm{TSS}}.$$

Sales on Price: RSS $= 2552.2$, $\hat\beta_1 = -0.053$, RSE $= 2.53$ thousand units, $R^2 = 0.198$, mean sales $= 7.50$. RMSE divides by $n$, not by $n-2$. RSE is the object from this week. RMSE returns with MSE on 7 September.

Questions:

- $\hat\beta_0$ is estimated sales at a price of zero. What would you tell headquarters about that intercept?
- A one-dollar higher price is associated with about 53 fewer seats. Why is that not yet a recommendation to cut the price?
- RSS is 2,552.2. What is that number in units of sales, and why is RSE easier to say out loud?
- $R^2 = 0.20$. TSS is the RSS of predicting the mean for every store. Is 0.20 “good” for this file, and what would you compare it with?
- The interval for the slope excludes zero and the t is $-9.9$. What decision does that not make?

## Statistical significance and economic size

Taught procedure for “is a $10 price increase large enough to matter?”:

- Turn $10 into seats: $10 \times \hat\beta_1$.
- Compare with mean sales.
- Compare with the RSE, the typical miss.

On the simple fit: about $-0.53$ thousand units (about 531 seats), about 7% of mean sales, and smaller than the RSE of 2.53. The week 1 notes and the deck both use this arithmetic. The extras cited there (McCloskey and Ziliak, Gelman and Stern) were marked not required for Quiz 1. The idea is in scope. The papers are not a reading assignment.

Questions:

- The Price coefficient is statistically significant. Does a $10 move clear the leftover noise? Walk the three comparisons.
- Once advertising is in the model, $\hat\beta_{\mathrm{Advertising}} = 0.131$ (about 131 seats per extra $1,000 of local ads) and a $10 own-price move is about $-0.91$ thousand seats. What is missing before that comparison becomes a budget decision? The deck’s answer is cost.
- “Significant in one specification and not in the next” is not itself a finding. What would you read instead? The week 1 notes say: the coefficients in units, and a nested $F$ if the question is about a block of predictors.

## Multiple regression

$$Y = \beta_0 + \beta_1 X_1 + \cdots + \beta_p X_p + \varepsilon$$

$$\mathrm{E}(Y \mid X_1,\ldots,X_p) = \beta_0 + \beta_1 X_1 + \cdots + \beta_p X_p$$

$\beta_j$ holds the other included predictors fixed. Least squares still minimizes RSS.

Price and CompPrice move together (correlation about 0.58). Sales on Price alone: $\hat\beta_{\mathrm{Price}} = -0.053$, $R^2 = 0.198$, RSE $= 2.53$. After CompPrice and Income: $\hat\beta_{\mathrm{Price}} = -0.087$, CompPrice $0.093$, $R^2 = 0.381$, RSE $= 2.23$. Then advertising, then shelf: $R^2$ goes $0.381 \to 0.475 \to 0.803$ and RSE goes $2.23 \to 2.06 \to 1.26$.

$R^2$ rises, weakly, whenever a predictor is added. That rise is not a reason to keep it.

Overall $F$ null, in words: $\beta_1 = \beta_2 = \cdots = \beta_p = 0$. Rejecting it is not a pricing recommendation. The slides showed `summary()` and `anova()` output. They did not put a hand-derived $F$ expression on the board. The packet should not add one.

Nested comparison that was worked: CompPrice and Income added to Price drop RSS from 2552.2 to 1971.3 on 2 degrees of freedom, $F = 58.3$.

Questions:

- Why does $\hat\beta_{\mathrm{Price}}$ get more negative when CompPrice is included? What is the sentence for CompPrice’s own coefficient (about 93 seats per extra competitor dollar, holding own price and income fixed)?
- You look at many t statistics and keep the stars. What question is the overall $F$ asking instead?
- Two models are nested. Which comparison answers “do these extra slopes belong?” Which comparison answers “did $R^2$ go up?”
- Lab 1 (Corolla): Age alone, then Age and kilometres. Same question as Price and CompPrice. A coefficient in euros is only large if it would change the posted ask. Car B is not in the file. The file has no cost and no experiment.

## Qualitative predictors

For a factor with $k$ levels, the model uses $k-1$ dummies. One level is the baseline. ShelveLoc is Bad, Medium, Good, with Bad as the baseline:

$$\mathrm{E}(\mathrm{Sales}\mid \ldots) = \beta_0 + \beta_1 \mathrm{Price} + \cdots + \beta_{\mathrm{Med}}\mathbf{1}\{\mathrm{Medium}\} + \beta_{\mathrm{Good}}\mathbf{1}\{\mathrm{Good}\}.$$

On the fitted table: Medium versus Bad is $1.85$ thousand units; Good versus Bad is $4.80$. Same Price slope, different intercepts, until an interaction is added. The cost of a better shelf is not in the file.

Lab 1 makes the same point with fuel: alphabetical order would make CNG the baseline (17 cars). Petrol is set as the baseline so the intercept is readable.

Questions:

- Why not three dummies for three shelf levels?
- Good versus Bad is 4.80 thousand units, holding the other included predictors fixed. What is that not?
- A colleague codes shelf as 1, 2, 3. What slope does that force, and why did the deck use dummies instead?
- Lab 1, section G: age and year of manufacture in the same equation. What goes wrong, in the same spirit as two predictors that are almost the same series?

## Confidence interval versus prediction interval

Two questions, same $\hat Y$. For a simple line at $x_0$:

$$\mathrm{SE}(\hat\mu(x_0))^2 = \hat\sigma^2\left(\frac{1}{n}+\frac{(x_0-\bar x)^2}{\sum_i(x_i-\bar x)^2}\right).$$

Confidence interval, uncertainty in the fitted mean only:

$$\hat y(x_0) \pm t^{*}\,\mathrm{SE}(\hat\mu(x_0)).$$

Prediction interval, that plus the leftover of a new store:

$$\hat y(x_0) \pm t^{*}\sqrt{\mathrm{SE}(\hat\mu(x_0))^2 + \hat\sigma^2}.$$

Store 1 under the advertising specification: both intervals are centered at about $9.01$. Confidence interval about $[8.69,\ 9.32]$. Prediction interval about $[4.95,\ 13.06]$.

The appendix on 7 September says both intervals are still in-sample unless the model was scored on rows it did not fit. Test MSE is the number for a house that was not used to fit.

Questions:

- Finance asks about one store next quarter. The segment manager asks about typical sales at this mix of $X$. Which band does each person get, and why is the outer band wider?
- Would you quote the confidence interval as the promise for Store 1?
- Lab 1 prices Car A (already listed) and Car B (not in the file). Which interval is the band for one car?

## Interactions and the checks on the line

Taught 31 August. Reading assignment stopped before page 87. Keep these three and the checks. Do not add a new interaction.

Advertising $\times$ income. The ads slope at a given income is $\beta_1 + \beta_3\,\mathrm{Income}$:

$$\mathrm{Sales} = \beta_0 + \beta_1\mathrm{Advertising} + \beta_2\mathrm{Income} + \beta_3(\mathrm{Advertising}\times\mathrm{Income}) + \cdots + \varepsilon.$$

Price $\times$ shelf. $\beta_1$ is the Price slope when the shelf is Bad. $\beta_1 + \beta_{P,\mathrm{Good}}$ is the slope when the shelf is Good. On this file the Good interaction is $-0.0048$ ($t \approx -0.62$). The lines are almost parallel.

Shelf $\times$ US. $\beta_{\mathrm{Good}}$ is the Good-versus-Bad gap when the store is not in the US. Adding $\beta_{\mathrm{G,US}}$ changes that gap in the US. The fitted interaction is $0.88$ thousand units. US enters the deck only in this block.

Checks that were actually plotted or computed:

- Linearity. Nested $F$ for adding $\mathrm{Price}^2$ has $p \approx 0.27$. Residual versus fitted is the picture. A flat smooth supports the line.
- Uncorrelated errors: $\mathrm{Cov}(\varepsilon_i,\varepsilon_j)=0$ for $i\neq j$. If it fails, SE and $t$ are too optimistic. This file is a cross-section. Serial correlation cannot be checked here. The deck said so.
- Constant variance: $\mathrm{Var}(\varepsilon_i \mid X) = \sigma^2$. Correlation of fitted sales with $|e|$ is about $0.02$ on this fit.
- Outlier: studentized residual $e_i / (\hat\sigma_{(i)}\sqrt{1-h_{ii}})$. The deck flags $|r_i| > 3$. Three stores sit past that line. A large residual is a reason to look, not an automatic deletion.
- Leverage $h_{ii}$: unusual $X$. Flag used in class: $h_{ii} > 2p/n$. A high-leverage store with a large miss can move a slope.
- Collinearity: $\mathrm{VIF}_j = 1/(1-R_j^2)$, with $R_j^2$ from regressing $X_j$ on the other predictors. Price and CompPrice have VIF about $1.5$. Correlated, and still both in the model.

Questions:

- Write the ads slope at a low income and at a high income. What would you need before that becomes an advertising allocation?
- The Price $\times$ Good interaction is small. What do you tell someone who wants a different price slope on every shelf?
- A 95% interval for a busy store assumes constant variance. What plot would make that interval too tight, and what did this file show?
- One store has a studentized residual past 3, and another has high leverage and a large miss. Which one can change $\hat\beta_{\mathrm{Price}}$ even when you care about the slope rather than the leftover?
- VIF about 1.5. Why is that a reason to keep CompPrice, rather than a reason to drop it?

## MSE, training error, test error, bias and variance

From 7 September. Same residuals, three scales. For a model with $p$ predictors,

$$\mathrm{MSE} = \frac{1}{n}\sum_{i=1}^{n}\bigl(y_i - \hat f(x_i)\bigr)^2, \qquad \mathrm{RMSE} = \sqrt{\mathrm{MSE}}, \qquad \mathrm{RSE} = \sqrt{\frac{1}{n-p-1}\sum_{i=1}^{n} e_i^2}.$$

MSE is what gets split into train and test. $\hat f$ is fit on the training rows only:

$$\mathrm{MSE}_{\mathrm{train}} = \frac{1}{n_{\mathrm{train}}}\sum_{i \in \mathrm{train}}\bigl(y_i - \hat f(x_i)\bigr)^2, \qquad \mathrm{MSE}_{\mathrm{test}} = \frac{1}{n_{\mathrm{test}}}\sum_{j \in \mathrm{test}}\bigl(y_j - \hat f(x_j)\bigr)^2.$$

The number for a house not in the fit is $\mathrm{MSE}_{\mathrm{test}}$.

West Roxbury, assessed value on living area, full file: MSE $= 2942.8$, RMSE $= 54.2$, RSE $= 54.3$, $n = 5802$. That MSE is in-sample.

50/50 split, seed 467: test MSE falls from $2997$ (living area) to $1881$ (plus remodel) to $1833$ (nested pairwise). On this $n$, extra columns still help. On 80 training houses the pairwise model has training MSE $775$ and test MSE $5079$.

$$\mathrm{E}\bigl[(y_0 - \hat f(x_0))^2\bigr] = \mathrm{Var}\bigl(\hat f(x_0)\bigr) + \bigl[\mathrm{Bias}\bigl(\hat f(x_0)\bigr)\bigr]^2 + \mathrm{Var}(\varepsilon).$$

$\mathrm{Bias}(\hat f(x_0)) = \mathrm{E}[\hat f(x_0)] - f(x_0)$. Variance is how much the prediction at this house moves when the training sample changes. $\mathrm{Var}(\varepsilon)$ is the floor. More flexibility pulls bias down and variance up. Test MSE is U-shaped in the picture. The deck did not estimate a numerical bias and variance from West Roxbury. The packet should not invent those two numbers.

Questions:

- Headquarters reports the MSE from the houses used to fit. A house arrives tomorrow. Which MSE do you believe?
- On 5,802 houses, test MSE falls as columns are added. On 80 houses, training MSE loves the pairwise model and the held-out houses do not. Where is that on the bias-variance picture?
- Living area on 80 houses is the high-bias fit. Pairwise hugs those 80. Which of the three would you trust for a house not in the picture?
- RSE uses $n-p-1$. MSE uses $n$. Why did Monday switch the score it splits to MSE?
- Lab 2: mean Ames sale is about $180{,}000$. Overall quality moves tens of thousands of dollars. Partial and New sales sit near $275{,}000$ and exist only after the deal. What would you explore before you post a number, and which columns exist before close?

## Leakage

A leak is a feature you would not have at the moment you must predict. It is a different failure from overfitting. Overfit looks good on the training rows and worse on the held-out rows. A leak can look good on the test rows too.

TAX on West Roxbury: the tax bill against assessed value. Correlation of TAX with total value is 1. Test MSE is tiny on both sides of the split. The deck’s rule: do not put TAX in any later model.

Also named on that slide: peeking at the test rows to pick the model.

Lab 2: `Sale.Condition` and `Sale.Type` are recorded at closing. They are the Ames version of the same mistake.

Lab 3 and the 16 September deck, reinforced: choose the model on the training rows (the 280, with the search repeated inside each fold). Score the 120 once, after the model is fixed. If the size is chosen on the held-out rows, the reported error is too small and it is no longer a test error.

Questions:

- You would not have the tax bill for a house you have not assessed. If TAX is a leak rather than a flexible line, should test MSE look worse than training MSE, or also tiny? What did the split show?
- A model with tiny test MSE uses a column the office would not have. Do you ship it?
- You try five model sizes on the 120 held-out customers and report the best of those five errors. What did you just do to that number?
- Ninety Credit accounts have Balance exactly zero. Lab 3 keeps them and says a separate model for “who carries a balance” is not this lab. Leave that second model out of the packet.

## Validation set, LOOCV, and k-fold

Validation set, fit on the training piece only:

$$\mathrm{MSE}_{\mathrm{val}} = \frac{1}{n_{\mathrm{val}}}\sum_{j \in \mathrm{val}}\bigl(y_j - \hat f_{\mathrm{train}}(x_j)\bigr)^2.$$

Order: split, then fit, then score. Two limits taught in class: the validation MSE is noisy because it depends on who landed in the split, and it tends to overestimate test error because the model was trained on fewer rows.

$$CV_{(n)} = \frac{1}{n}\sum_{i=1}^{n} \mathrm{MSE}_i, \qquad CV_{(k)} = \frac{1}{k}\sum_{\ell=1}^{k} \mathrm{MSE}_{\ell}.$$

LOOCV is k-fold with $k = n$. The number on the board is the average of the held-out MSEs, not the smallest fold and not the last fold. On the 10-fold picture for the remodel model, the red line is that mean ($1853.6$).

OLS shortcut, so the hour did not refit 5,802 times. $h_{ii}$ is the same leverage as in week 1:

$$CV_{(n)} = \frac{1}{n}\sum_{i=1}^{n}\left(\frac{y_i - \hat y_i}{1 - h_{ii}}\right)^2.$$

For living area, that CV is $2946.1$. LOOCV has little bias ($n-1$ training rows, no random split) and can be a high-variance estimate of test error. k-fold with $k = 5$ or $10$ is the compromise that was taught: cheaper than refitting $n$ times, and often a better bias-variance balance for the estimate of test error.

The model that is chosen:

$$\hat m = \arg\min_m \, CV_{(k)}(m).$$

On the full West Roxbury file, 10-fold CV still picks the pairwise model. On 80 houses, test error picks the remodel model and training MSE picks pairwise. The deck said the same rule later picks $\lambda$. It did not fit a penalty that day.

Questions:

- One 50/50 split can jump. You cannot hold out a large permanent test set. What do you reuse, and what are you estimating: assessment of one model, or selection among models?
- The loop returns ten MSEs. Which of the ten do you report?
- Why does the OLS shortcut equal leave-one-out? Which houses does a large $h_{ii}$ up-weight?
- Validation MSE used fewer training rows. In which direction does that push the error, relative to a test error from a model trained on more data?
- Lab 2 asks for three estimates of test error: a validation set, LOOCV, and k-fold. All three are in scope. Bootstrap was explicitly not taught. Leave it out.

## Subset selection

Credit, Balance in dollars. Mean Balance is about $520$. The lecture uses the ISLR Credit file. Lab 3 treats the same 400 rows as QNB accounts. Eleven predictors. Hold out 120. Search on 280.

$$Y = \beta_0 + \beta_1 X_1 + \cdots + \beta_p X_p + \varepsilon.$$

Best subset, for each size $k$:

$$\hat M_k = \arg\min_{|M|=k}\ \mathrm{RSS}(M).$$

Training RMSE falls as $k$ grows. The full model always wins on the rows used to fit it. Training RSS and training $R^2$ cannot choose $k$.

Forward: start from $M_0$ and add the predictor that reduces RSS most. It is not a search of all $2^p$ models. At size 2, best subset looks at all 55 pairs. Forward looks only at the 10 models that contain $M_1$. After it picks Rating, it can never see a pair that excludes Rating. On this file the two searches agree at sizes 1–3. At size 4, best subset includes Cards and drops Rating. Forward cannot drop Rating. Training RMSE is about $1.50$ higher. Backward drops one predictor at a time from the full model and can miss a column that is useless alone and useful with a column it already dropped. If $p \ge n$, the full model does not exist and backward cannot start. Forward still can. With $p = 500$ and $n = 300$, forward is the search that still runs. Shrinkage is the other option the deck named for that case.

Questions:

- Why is the best training RSS of each size not yet a chosen model?
- Forward is second by about $1.50 of training RMSE at size 4. Average Balance is about $520. Is that gap small enough to trust a greedy search when there are more predictors?
- $p > n$. Which search cannot start, and why?
- Lab 3: a model can fit these 400 accounts very well and still be a poor model for the next customer. What goes wrong for the bank if you use it anyway?
- The deck’s practice rule when two models have almost the same prediction error: use the one with fewer predictors. What are you giving up at size 6 if size 4 is within a few dollars?

## Cp, AIC, BIC, adjusted R², and cross-validation for the size

Strategy 1 adjusts the training fit. Strategy 2 scores rows that were not used to fit. These are the expressions on the 16 September slides. $n$ is the number of customers, $d$ is the number of predictors in the model, $\hat\sigma^2$ is from the full least-squares fit, $L$ is the maximized likelihood. The speaker note flags a trap: people count the intercept inside $d$ or outside it. The packet must use the slide’s definition and these expressions.

$$C_p = \frac{1}{n}\Bigl(\mathrm{RSS} + 2\,d\,\hat\sigma^2\Bigr)$$

$$\mathrm{AIC} = -2\log L + 2\,d \approx C_p \text{ for least squares}$$

$$\mathrm{BIC} = \frac{1}{n}\Bigl(\mathrm{RSS} + \log(n)\,d\,\hat\sigma^2\Bigr)$$

$$\text{Adjusted } R^2 = 1 - \frac{\mathrm{RSS}/(n-d-1)}{\mathrm{TSS}/(n-1)}$$

On these 400 customers, $\log(n) = 6.0$, so BIC’s penalty per predictor is larger than Cp’s penalty of 2. Cp and AIC select size 6. BIC selects size 4. Adjusted $R^2$ selects size 7. The two predictors the smaller penalty keeps, and BIC drops, are Rating and Age.

On the 280 training customers, 10-fold CV (best subset rerun inside each fold) has its minimum at size 6, about $95. The one-standard-error size is 3, about $101: the smallest size these folds cannot separate from the minimum. BIC on those 280 rows selects size 4, on the flat part of the CV curve. Training error keeps falling through that plot.

Do not break the tie with p-values. Limit and Rating move together. Same customers:

| Variable | Alone | With its twin | Full fit (11 predictors) |
| --- | --- | --- | --- |
| Limit | $3 \times 10^{-119}$ | $0.70$ | $1 \times 10^{-8}$ |
| Rating | $2 \times 10^{-120}$ | $0.02$ | $0.02$ |

The CV error did not say to drop either one.

Questions:

- Training RSS falls every time you add a predictor. What does strategy 1 require, and what does strategy 2 require?
- Cp picks 6 and BIC picks 4. Which penalty is larger here, and which two predictors does the smaller penalty keep?
- Size 4 and size 6 have almost the same CV error, on a mean Balance of about $520. Which size do you use, and what do you give up?
- Limit’s p-value is tiny alone, about $0.70$ next to Rating, and tiny again in the full fit. Why is “keep the small p-values” not a selection rule?
- You cross-validate a search. Where does the search have to be rerun?

## Ridge and lasso

Subset selection puts a column in or out. Ridge and lasso keep all $p$ predictors and shrink the slopes toward zero. The choice is $\lambda$. The intercept is not penalized. Predictors are standardized before the penalty, or a coefficient in large units is punished harder than a coefficient in small units. The picture of Limit versus Student is the demonstration: original units make the path unreadable. Balance stays in dollars. Lab 4’s outcome is $\log(\mathrm{spend})$ because the dollar histogram has a long right tail. That log is part of the lab, not a new method.

$$\hat\beta^{\text{ridge}} = \arg\min_{\beta}\left\{\mathrm{RSS} + \lambda \sum_{j=1}^{p}\beta_j^2\right\}$$

$$\hat\beta^{\text{lasso}} = \arg\min_{\beta}\left\{\mathrm{RSS} + \lambda \sum_{j=1}^{p}\lvert\beta_j\rvert\right\}$$

$\lambda = 0$ is least squares. As $\lambda$ grows without limit, every slope goes to zero and the intercept predicts the mean. $\lambda$ is not estimated with the slopes. Training RSS is smallest at $\lambda = 0$, so training RSS cannot choose $\lambda$. Cross-validation chooses it.

Ridge does not set coefficients to exact zeros. Lasso can. A large enough $\lambda$ leaves a predictor out of the prediction. On the Credit lasso path, Own hits zero first and Rating last. Limit and Rating still move together. A lasso zero does not mean “no association.”

`glmnet` as run in class: `alpha = 0` for ridge, `alpha = 1` for lasso, `standardize = TRUE` by default.

The CV curve has two marks. The minimum is one choice. The other is the largest $\lambda$ within one standard error of that minimum (fewer coefficients, error still inside the band). Lab 4 uses the same two names: `lambda.min` and `lambda.1se`. They will not keep the same websites.

Holdout on the 120 Credit customers, as taught: lasso about $113$–$114$ RMSE, matching least squares. Default ridge grid about $121$–$125$, higher by about $7$–$11$ dollars. The default grid stops near $\lambda = 40$ and the minimum sits on that edge. A wider grid comes back to about $113$–$114$. “Ridge lost” on the first graph is a grid artifact.

Lab 4, and it belongs because the lab was taught: 10,000 households, 1,000 sites, shares in percent of page views (a row sums to 100), not raw visit counts. A count of 10 is a large share for a household with 25 page views and a small share for a household with about 48,000. The null RMSE is the standard deviation of $\log(\mathrm{spend})$, about $1.67$ (`sd` divides by $n-1$; RMSE divides by $n$). A cross-validated RMSE near that number means the sites are not beating the mean. Seed 369 was for the room, not a formula. Elastic net is step 8, after class, and only after the in-class choice is written down. It was not in the lecture. Leave it out of the packet.

The deck also showed a simulation formula, $\text{test MSE} = \mathrm{Bias}^2 + \mathrm{Variance} + \text{irreducible error}$, and said that across 200 resamples Limit and Rating vary by about $87$ dollars at least squares and by less than $7$ dollars when $\lambda$ is about $50$. That is the stability argument for shrinking. PCA was named as later in the course. It is not this exam.

Questions:

- If you pick $\lambda$ to make training RSS as small as possible, what value do you get, and why is that the wrong rule?
- Why standardize Limit and Student before ridge, and what did the unstandardized path do to the picture?
- Ridge’s penalty squares the slope. Lasso’s penalty uses the absolute value. What can the second penalty do that the first does not?
- A coefficient hits zero on the lasso path. Does that predictor have no association with Balance? What is the Limit and Rating answer?
- The two CV lines have almost the same error. The dashed line keeps fewer coefficients. Which $\lambda$ do you use?
- Ridge looks worse than the lasso on the default holdout graph. What do you check before you conclude that ridge predicts worse?
- Lab 4: why is a raw count of 10 a poor column, and why is each browsing row not its own household?

# What to skip

Say this at the start of the hour, because the live schedule and the homepage currently tell students that week 5 includes logistic regression.

- Logistic regression, odds, the logit, classification error, ROC, AUC, and decision thresholds. Wednesday 30 September was cancelled. Lab 5 (logistic) is marked “Not posted yet.” No logistic deck is on the slides page. Unmerged branch files under `slides/session05-logistic-regression/` are not student materials and are not a source for this packet. The make-up is a different Monday sitting.
- A second model for “who has a nonzero Balance,” which Lab 3 explicitly set aside.
- Trees, forests, boosting, PCA, clustering, neural nets. PCA is one card on the 16 September roadmap, labeled later.
- Bootstrap. The 7 September deck said it was not in the hour.
- MAE, Anscombe plots, and a hand-derived $F$ formula. The slides did not teach them.
- Elastic net. Lab 4, after class only.
- Caravan. The 16 September speaker notes say not to open it.
- A new browser-spend lecture. Lab 4 already did that case. Recall the lab. Do not start a second high-dimensional story.
- Causal claims from the store file, the Corolla file, Credit, Ames, or the browsing file. None of those $X$s was randomized. The RCT examples on the four-uses slide (a coupon trial, Card–Krueger, Progresa) were illustrations of the causal card, not exam cases.
- Papers listed as extras in the week 1 notes.
- Anything dated after 23 September. There is no posted deck for 28 September.

# Packet outline

Target is 5 pages. Floor 3, ceiling 6. One column, the formulas above, and short questions under each block. Reuse the store file, West Roxbury, and Credit. Point at Corolla, Ames, and the browsing lab in a line each. Do not paste a new dataset.

Page 1. The exam and the map. Wednesday 7 October, 75 minutes, closed notes, no devices, no AI. The syllabus list: linear regression, metrics, train/test and generalization, regularization, cross-validation and model selection. One plain sentence that logistic regression is outside this exam and that the make-up is a separate Monday. The four uses, with the causal card tied to randomized $X$. The population line and the fitted line. One question: association versus the effect of a price cut.

Page 2. Reading a slope. RSS, the coefficient table, the simple SE and the $\pm 2\,\mathrm{SE}$ interval, the $t$ test, RSE, $R^2$. The $10 \times \hat\beta$ comparison against mean sales and against RSE, with the simple-regression numbers. The multiple-regression sentence (holding the other included $X$s fixed) and the Price coefficient moving from $-0.053$ to $-0.087$ once CompPrice is in. Questions: intercept at price zero; why a star is not a price cut; why $R^2$ rising is not a reason to add a variable; what the overall $F$ null says.

Page 3. Categories, intervals, and the checks worth a short question. The $k-1$ dummy and the Bad baseline, with Medium $1.85$ and Good $4.80$. Confidence interval versus prediction interval, including the extra $\hat\sigma^2$, and Store 1’s two intervals. One interaction only, written as a slope that depends on another $X$, plus the sentence that Price $\times$ shelf was small on this file. Three checks: residual versus fitted, studentized residual, VIF for Price and CompPrice. Questions: which band for one store; why not $k$ dummies; what VIF about $1.5$ tells you to do.

Page 4. The number you report. MSE, RMSE, RSE. Train versus test. The 80-house overfit next to the full-file result. The bias-variance decomposition in the form on the slide, without invented component numbers. TAX as a leak that looks good on the test set. Validation MSE, the two CV averages, the OLS shortcut, and the rule that the reported CV error is the mean of the fold MSEs. The sentence that choosing on the holdout spoils it. Questions: which MSE for a new house; which of the ten fold MSEs goes on the board; what test MSE does under a leak.

Page 5. Choosing the model, then shrinking it. Best subset formula. One sentence each for forward and backward, including the $p \ge n$ limit and the size-4 Rating disagreement. The four strategy-1 formulas exactly as on the slide, with Cp/AIC at 6, BIC at 4, adjusted $R^2$ at 7, and $\log(400) = 6$. CV minimum at size 6 (about $95) and the one-standard-error size. The Limit / Rating p-value table. Ridge and lasso objectives, intercept unpenalized, standardize $X$, $\lambda = 0$ versus $\lambda$ large, CV rather than training RSS, lasso zeros, `lambda.min` versus `lambda.1se`, and the ridge grid that stopped too early. Questions: why training RSS cannot choose $k$ or $\lambda$; why a p-value cannot break the size-4 versus size-6 tie; what a lasso zero means when two predictors move together.

If the draft runs long, cut page 3’s interaction before you cut leakage, the CV mean, or the lasso penalty. If it runs short, add the Store 1 intervals and the TAX question before you add a sixth page of new cases.

# How to run the hour

75 minutes. No new method. Laptops closed, same rule as other Mondays.

- 8 minutes. Scope and logistics. Read the syllabus list. Say that the schedule line “including logistic” is not the exam, and that the cancelled class has its own Monday make-up. Closed notes on Wednesday. Then one pass through the four uses.
- 17 minutes. Pages 2 and the dummy piece of page 3. Work the $10 price move and the coefficient that changes when CompPrice is added. Ask the baseline question. Do not re-derive least squares.
- 10 minutes. Confidence interval versus prediction interval on Store 1. One check only: either the studentized residual or the VIF, depending on what the room is unsure about.
- 15 minutes. Page 4. Make them say which number they would report. TAX versus the 80-house overfit, side by side, so leak and overfit stay different. The CV question is “the mean of the ten, not the smallest.”
- 20 minutes. Page 5. Training RSS cannot choose. Cp and BIC disagree, and that is expected. P-values move when the companion predictor changes. Ridge versus lasso is the penalty, then $\lambda$ by CV, then the grid artifact.
- 5 minutes. Their questions. If a question is logistic, write it down for the make-up and do not answer it as exam material.

Quiz 1 and Quiz 2 are not in the repo, so this hour cannot be keyed to the actual quiz items. Expected place, if they had been posted: they are not under `notes/`, `hw/`, or `slides/`.

# How to audit a later draft

Check the draft against the posted exam sentence and against the files in the table above. A slide that exists only on an unmerged branch does not count as taught.

1. Every heading in the draft maps to one topic in the list above. If it does not, it is an extra idea.
2. Logistic regression, odds, classification metrics, trees, PCA, clustering, bootstrap, elastic net, and Caravan do not appear, including in a “for interest” box or a worked example.
3. The four strategy-1 formulas match the 16 September slides, including $C_p = (1/n)(\mathrm{RSS} + 2 d \hat\sigma^2)$ and the BIC form with $\log(n)\,d\,\hat\sigma^2$ inside $(1/n)(\cdot)$. A draft that uses $C_p = \mathrm{RSS}/\hat\sigma^2 + 2d - n$, or $n\log(\mathrm{RSS}/n) + \log(n)\,d$, is the wrong formula for this course.
4. Ridge penalizes $\sum \beta_j^2$. Lasso penalizes $\sum |\beta_j|$. The intercept is outside both sums. $\lambda = 0$ is least squares.
5. RSE for the simple line divides by $n-2$. The general RSE divides by $n-p-1$. MSE and RMSE divide by $n$. CV reports the mean of the fold MSEs.
6. The prediction interval carries the extra $\hat\sigma^2$. The confidence interval does not.
7. Dummy variables are $k-1$, with a named baseline.
8. Numbers that the draft quotes match the decks: Price slope $-0.053$ then $-0.087$; RSE $2.53$; $R^2$ path $0.198,\ 0.381,\ 0.475,\ 0.803$; Store 1 center about $9.01$; TAX correlation $1$; Cp/AIC size 6, BIC size 4, adjusted $R^2$ size 7; CV minimum about $95$ at size 6; Limit’s p-value $0.70$ beside Rating; lasso holdout about $113$–$114$; default ridge grid higher until the grid is widened.
9. Leakage examples are TAX and, if Ames is mentioned, sale condition or sale type. Choosing the model on the final holdout is named as the same failure.
10. Assigned pages are only the ISLR ranges in the Scope section. Chapter 6 is not listed as required reading unless a page range gets posted. Pages 87–103 are not assigned. Interactions in the packet stay inside the three that were taught.
11. The draft does not depend on `notes/week01-linear-regression.qmd` as a live link. That file was removed from the published tip while the index still points at it.
12. Labs and both homeworks are cited from `origin/gh-pages` paths, or the draft says they are not in the `main` working tree. They are not invented from the empty “Not posted yet” lines in `labs/index.qmd` and `hw/index.qmd` on `main`.
13. No formula is copied from speaker notes that the slide itself did not teach. Speaker notes are full of “do not say this” instructions. Those instructions are for the instructor, not for the packet.
14. The first page states the Wednesday rules and states that logistic regression is outside the exam. A draft that follows the gh-pages schedule line “incl. logistic” fails the audit even if the rest is right.

# How to critique a later draft

Read it as the student who will hold it on Sunday night, then read it against the file table.

Missing idea. The usual holes, in the order they hurt: the prediction interval’s extra $\hat\sigma^2$; reporting the mean of the fold MSEs; rerunning the search inside each fold; BIC’s larger penalty and the fact that the four criteria disagree; the p-value that changes when Rating sits next to Limit; standardizing before the penalty; a lasso zero that is not “no association”; TAX looking good on the test set. A packet that has ridge and lasso objectives and never says training RSS picks $\lambda = 0$ is missing the decision.

Extra idea. Anything in the skip list. Also extra: a derived sampling distribution for $\hat\beta$, a VIF cutoff copied from another course, elastic net, a hurdle model for zero balances, a claim that best subset finds the true model, and a second high-dimensional dataset. The 16 September deck told the instructor not to claim that best subset finds the truth.

Wrong formula. The Cp and BIC forms are the ones students will “correct” from memory. Also watch: penalizing the intercept; dividing RSE by $n$; dividing MSE by $n-p-1$; a 95% interval that uses $1.96$ where the slide used $2$ for the slope and $t^{*}$ for the prediction interval; $\alpha = 1$ labeled as ridge; the one-standard-error $\lambda$ described as the smallest $\lambda$ rather than the largest $\lambda$ within one standard error of the minimum.

Student-facing voice. The posted decks ask a question, then put the formula under it, then ask what the number means in units. The packet should sound like that. It should say “seats,” “dollars of Balance,” and “a house you have not assessed.” It should not sound like speaker notes (“Session 03,” “do not name Carseats,” “E2E slide 32”) and it should not sound like a theorem list with no decision under it. If a sentence could be read as “the slope is the effect of cutting the price,” rewrite it as the association the deck actually claimed.

# How to improve it before a final version

1. Run the audit checklist and mark each item pass or fail in the margin. Fix fails before any prose polish.
2. Read the draft out loud against pages 2 through 5 of the outline. Cut any paragraph that teaches a method the outline does not name.
3. Recompute the five numbers a student will check: $10 \times (-0.053)$; the two Store 1 intervals from the slide; $\log(400)$; the Cp versus BIC sizes; ridge’s penalty versus the lasso’s penalty. If a recomputation disagrees with the deck, the deck wins.
4. Hand the first page to someone who has only seen the website. They should be able to say what is on the exam and that logistic regression is not. If they cannot, the opening is wrong, because the live schedule still says otherwise.
5. Check length. Three to six pages. If it is over six, drop the interaction block and the extra lab anecdotes first. If it is under three, the CV mean, the leak, and the two penalties are the pieces to put back.
6. After that pass, change only student-facing sentences: units, which interval, which error, what a zero coefficient means. Do not open a new source file at that stage. The unmerged logistic slides stay closed.
