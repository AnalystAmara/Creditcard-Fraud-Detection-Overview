## Credit Card Fraud Detection Analysis Report

### Introduction

This report provides an analysis of a credit card transactions dataset, focusing on identifying and visualizing fraudulent transactions. 

### Dataset Overview

The original dataset consists of 283,726 rows and 31 columns, including anonymized features, transaction amounts, timestamps, and a binary class label indicating fraud. The dataset includes the following key columns:

- Time: Seconds since the first transaction
- V1 to V28: Anonymized PCA features
- Amount: Transaction amount
- Class: 0 (Non-Fraud), 1 (Fraud)

### Data Cleaning and Transformation

The dataset was relatively clean. However, some transformations were done to ease visualization and they include:

-	The columns with anonymized features, which were encrypted for security reasons, Column 2 to Column 29 (V1 to V28), were removed as they could not be decrypted and therefore not useful for this analysis. 
-	The values of the Class Column were replaced. ‘0’ was replaced with Non Fraud, ‘1’ was replaced with Fraud for quick grasp of the overview.

Note: Here is a link to the dataset containing the anonymized features: https://1drv.ms/x/c/0f2867637f111f76/EeukdZbBT8dFvx1UxDRB_xcBfAOp_KoOeCc8SkcGjUSkFg?e=kWzBpG

### Analysis

#### Total Transactions vs Fraudulent Transactions
|Metric|Value|
|---|---|
|Non-Fraudulent Transactions|284,315|
|Fraudulent Transactions|492|
|Fraud Rate|17.27%|

**Insight**: The rate of fraudulent transactions recorded was significantly low compared to the total transactions and these transactions were spread overtime.

### Conclusion

The dataset had no relevant metrics for determining factors influencing fraudulent transactions and the values in Columns 2 to 29 could not be decoded for basis analysis thereby leading to minimal insight.
