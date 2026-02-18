# Stock Price Prediction using Machine Learning & LSTM

## Project Overview

This project analyzes historical stock price data and builds predictive models using both traditional machine learning and deep learning techniques.

The objective was to:

- Compare Linear Regression vs LSTM for time-series forecasting
- Evaluate predictive accuracy using multiple performance metrics
- Generate short-term future forecasts
- Understand the limitations of classical regression in financial time-series data

Stock used in this study: **RELIANCE.NS**  
Data range: 2015 – Present  
Data source: Yahoo Finance (via `yfinance`)

---

## Business Problem

Stock markets exhibit high volatility and non-linear behavior.

Traditional regression models may fail to capture sequential dependencies in time-series data.

This project explores:

- Can Linear Regression perform adequately using engineered features?
- Does LSTM outperform traditional models in capturing temporal patterns?
- What is the tradeoff between simplicity and predictive power?

---

## Tech Stack

- Python
- Pandas & NumPy
- Matplotlib & Seaborn
- Scikit-Learn
- TensorFlow
- yfinance

---

## Data Acquisition

Historical stock data was downloaded programmatically using:

`yf.download(STOCK_TICKER, start=START_DATE, end=END_DATE)`

Columns retrieved:

- Open
- High
- Low
- Close
- Volume

Primary modeling variable: **Closing Price**

---

## Feature Engineering

### For Linear Regression:

- Previous Day Close
- 10-Day Simple Moving Average
- 30-Day Simple Moving Average

These features capture short-term trend and momentum behavior.

### For LSTM:

- Past 60 days of closing prices used as sequential input
- Data scaled using MinMaxScaler
- Reshaped into 3D format (samples, timesteps, features)

---

## Exploratory Data Analysis

- Historical price visualization
- Moving average overlay
- Correlation matrix of engineered features

This helped validate:

- Strong correlation between lag features and current price
- Trend persistence in short windows

---

## Model 1: Linear Regression

Baseline statistical model trained using engineered features.

### Evaluation Metrics:

- MSE
- RMSE
- MAE
- R²

Linear Regression performs reasonably but struggles with:

- Capturing non-linear market movements
- Handling long-term dependencies

---

## Model 2: LSTM (Long Short-Term Memory Network)

Deep learning model designed for sequence prediction.

Architecture:

- LSTM layers
- Dropout for regularization
- Dense output layer

Input: 60-day rolling window  
Output: Next day closing price

### Why LSTM?

Because stock prices depend heavily on historical sequences rather than isolated features.

---

## Future Forecasting

Using recursive prediction:

- Last 60 days fed into trained LSTM
- Predicted next 30 trading days
- Each prediction fed back into model for subsequent forecasting

This simulates real-world forward forecasting.

---

## Key Insights

- Lag features are strong predictors in linear models.
- However, financial time series exhibit non-linearity.
- LSTM captures sequential dependencies more effectively.
- Recursive forecasting compounds prediction error over long horizons.

---

## Potential Improvements

- Add technical indicators (RSI, MACD)
- Include Volume as feature
- Use Bidirectional LSTM
- Add train-validation split
- Implement cross-validation for time series
- Compare with ARIMA or Prophet
- Hyperparameter tuning
