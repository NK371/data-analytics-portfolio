# GDP Growth and Its Influence on Investment Returns

## Project Overview

This project analyzes the relationship between India’s GDP growth and investment returns across major asset classes including equities, bonds, gold, and inflation.

The objective is to examine:

- Whether economic growth influences financial market returns
- The strength of this relationship
- Whether financial markets contain predictive information about GDP growth
- How macroeconomic indicators interact with asset performance

This project integrates macroeconomics, financial modeling, and statistical analysis to derive actionable insights for investors and analysts.

---

## Business Problem

Investors and policymakers often assume that higher GDP growth leads to stronger financial market returns.

This project evaluates:

- Is GDP growth significantly correlated with market returns?
- Can GDP growth explain variation in asset returns?
- Do financial markets predict future economic growth?

Understanding these relationships is critical for:

- Portfolio allocation decisions
- Economic forecasting
- Investment strategy development

---

## Data Sources

- GDP Growth (Annual) – Public macroeconomic datasets
- Equity Indices – Nifty 50 & Sensex
- Bond Market – 10-Year Government Yield Returns
- Gold Returns
- Inflation (Annual %)

Time Period: Multi-year annual dataset  
Frequency: Annual

All price-based assets were converted into annual percentage returns.

---

## Tools & Technologies

- **Python**
    - Pandas (Data Manipulation)
    - NumPy (Numerical Computation)
    - Matplotlib / Seaborn (Visualization)
    - Statsmodels (Regression & Granger Causality)
- Jupyter Notebook

---

# Methodology

The analysis follows a structured macro-financial workflow:

---

### Data Cleaning & Preparation

- Converted variables to numeric format
- Handled missing values
- Standardized year format
- Merged all datasets on Year

This ensured consistency and comparability across macroeconomic and financial variables.

---

### Return Calculation

For price-based assets:

Return=Pt−Pt−1Pt−1×100Return = \frac{P_t - P_{t-1}}{P_{t-1}} \times 100Return=Pt−1​Pt​−Pt−1​​×100

Returns were computed using percentage change to convert raw price levels into meaningful financial performance metrics.

---

### Exploratory Data Analysis (EDA)

Visualizations were created to:

- Compare GDP growth and asset return trends
- Examine volatility differences
- Identify economic shock periods

Key observation:  
Financial market returns exhibit significantly higher volatility compared to GDP growth.

---

### Correlation Analysis

Pearson correlation coefficients were computed to measure linear relationships between GDP growth and asset returns.

Findings indicate:

- Moderate association between equity markets and GDP growth
- Weaker relationship between GDP and alternative assets
- Correlation alone does not imply predictive power

---

### Regression Analysis

A linear regression model was estimated:

Returns=β0+β1(GDPGrowth)+ϵReturns = \beta_0 + \beta_1(GDP Growth) + \epsilonReturns=β0​+β1​(GDPGrowth)+ϵ

Key Metrics Interpreted:

- Coefficient significance (p-value)
- R-squared (explanatory power)
- Direction of impact

Results suggest that GDP growth has limited explanatory power over annual investment returns, reinforcing the idea that markets are influenced by multiple factors beyond economic growth alone.

---

### Granger Causality Test

To evaluate predictive relationships, a Granger causality test was conducted with up to 4 annual lags.

Purpose:  
Determine whether past values of financial market returns help predict future GDP growth.

Hypothesis:

- H₀: No predictive causality
- H₁: Predictive relationship exists

Results indicate that financial markets may incorporate forward-looking information, but predictive strength varies across asset classes.

Important:  
Granger causality indicates predictive relationships — not true economic causation.

---

## Key Insights

- Financial markets are significantly more volatile than GDP growth.
- GDP growth alone explains only a limited portion of investment return variation.
- Equity markets reflect macroeconomic expectations but are also driven by global events, liquidity, and sentiment.
- Predictive relationships between financial variables and GDP are limited and not uniformly strong across asset classes.
- Macroeconomic systems are multi-factor driven and require broader modeling frameworks.

---

##  Business & Investment Implications

For Investors:

- GDP growth should not be used as a standalone predictor for portfolio performance
- Diversification across asset classes remains essential.
- Forward-looking financial indicators may provide early signals of economic shifts.

For Analysts:

- Macro-financial modeling requires multi-variable frameworks.
- Time-series dynamics must be considered when studying economic relationships.

---

## Skills Demonstrated

- Financial Return Computation
- Time Series Alignment
- Data Cleaning & Transformation
- Correlation & Regression Analysis
- Econometric Testing (Granger Causality)
- Statistical Interpretation
- Data Visualization & Storytelling

---

## Limitations

- Annual data reduces statistical power
- Structural breaks (e.g., financial crises, pandemics) may influence results
- Omitted macro variables (interest rates, global growth)
- Granger causality does not imply true economic causation

---

## Future Improvements

- Include interest rates as a control variable
- Conduct multivariate regression
- Perform stationarity testing (ADF test)
- Use quarterly data for deeper time-series analysis
- Implement Vector Autoregression (VAR) modeling
