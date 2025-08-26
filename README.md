# Trickledowneconomics
## Overview
- This project evaluates the trickle-down economics hypothesis in the context of the Reagan tax cuts, which sharply reduced the top marginal tax rate in the early 1980s. The hypothesis argues that cutting taxes for top earners stimulates economic growth and investment, which in turn benefits middle- and lower-income households.
- To test this, I examine both nominal and inflation-adjusted median household incomes over time and estimate their relationship to top tax rates and the timing of tax policy changes.

- Tools used: R, ggplot2
- Data period: 1970–1996
- Geography: United States

## Data
- The dataset contains annual observations from 1970–1996.
- Outcome variables: MedianInc — Nominal median household income (not adjusted for inflation), RealMedianInc — Median household income adjusted for inflation (base year constant dollars)
- Key regressors: Toptax - Top marginal income tax rate, Time - Time trend, Post - Indicator for years after the Reagan tax cuts (1981 onward), TimePost — Interaction term capturing change in income trend after 1981

## Methodology
- I ran segmented regressions to model shifts in income levels and growth rates before and after the 1981 tax cuts. Three main modeling approaches were used for both nominal and real income:
- Segmented regression: Estimates whether there was a level shift or slope change in incomes post-tax cut
- Direct effect of top tax rate: Regressing income on time and top tax rates
- Combined model: Includes both policy timing (post-1981) and top tax rates

## Key Findings 
1. Nominal Income Results
- In all models, nominal median income rises significantly over time (p < 0.001).
- The post-1981 dummy and slope change terms are significant, suggesting some upward movement in nominal income growth after tax cuts.
- Top tax rates have a negative and marginally significant coefficient, meaning lower top rates correlate with higher nominal incomes, though this relationship weakens when controlling for timing.

2. Real Income Results
- When adjusting for inflation, the narrative changes:
- The post-1981 dummy has a negative coefficient (p = 0.017), suggesting a drop in real median income levels after the cuts, although the TimePost coefficient is positive, indicating that real income rises at a faster _rate_ than before the cuts.
- Top tax rates are also negatively associated with real median income (p = 0.016), but inflation-adjusted gains are not statistically robust.
- Models explain far less variation in real incomes (Adjusted R² ≈ 0.33 vs. ≈ 0.99 for nominal income).

  
