# Bank_loan_analysis

# Bank Loan Analysis Dashboard

## Project Overview

The **Bank Loan Analysis Dashboard** is a data analytics project developed using **PostgreSQL** and **Microsoft Power BI**. It analyzes bank loan applications, funded amounts, repayments, borrower profiles, and loan performance through interactive dashboards and visualizations.

The project is organized into three dashboards: **Summary**, **Overview**, and **Details**.

## Project Objectives

- Analyze total loan applications and monthly application trends.
- Track total funded amounts and total amounts received.
- Monitor average interest rates and debt-to-income (DTI) ratios.
- Compare good loans and bad loans using loan status.
- Explore loan applications by state, term, purpose, employment length, and home ownership.
- Present findings through interactive Power BI visuals to support data-driven analysis.

## Tools and Technologies

- **PostgreSQL / SQL** — data querying and analysis
- **Microsoft Power BI** — dashboard development and visualization

## Dashboard Details

### 1. Summary Dashboard

Provides a high-level overview of loan portfolio performance, including:

- Total loan applications
- Total funded amount
- Total amount received
- Average interest rate
- Average debt-to-income (DTI) ratio
- Good loan versus bad loan analysis
- Loan status distribution

### 2. Overview Dashboard

Highlights trends and patterns across loan applications, including:

- Monthly loan application trends
- State-wise loan applications
- Loan applications by term
- Employment length analysis
- Loan purpose analysis
- Home ownership analysis

### 3. Details Dashboard

Provides a more detailed view of individual loan records and related financial information, such as:

- Loan ID and issue date
- Loan grade and sub-grade
- Loan purpose and home ownership
- Funded amount and amount received
- Interest rate and installment

The exact fields available depend on the columns in the source dataset.

## Key Insights

- The Summary dashboard screenshot shows **95.2% good loans and 4.8% bad loans** under the selected filters. These percentages may change when dashboard filters change.
- Monthly and state-wise views help explore where and when loan applications occur.
- Loan purpose, term, employment length, and home ownership visuals help compare borrower and application patterns.
- Funded amounts, amounts received, interest rates, and DTI ratios provide measures for reviewing lending performance and borrower profiles.

> Note: Insights depend on the dataset, definitions used for good and bad loans, and the filters selected in Power BI. They should not be interpreted as proof of credit risk or loan quality without further validation.

## Repository Contents

Suggested repository structure:

```text
Bank-Loan-Analysis-Dashboard/
├── README.md
├── bank_project.sql
├── Bank-Loan-Analysis.pptx
└── Dashboard-Screenshots/
    ├── summary-dashboard.png
    ├── overview-dashboard.png
    └── details-dashboard.png
```

Replace the example PowerPoint and screenshot filenames above with your actual filenames. Upload only files that are part of your project.

## How to Use

1. Download or clone this repository.
2. Open `bank_project.sql` in PostgreSQL/pgAdmin and review the queries.
3. Connect the relevant loan dataset to Power BI.
4. Open the Power BI report file if you have included a `.pbix` file, or use the screenshots and presentation to review the dashboards.
5. Explore the dashboard filters to analyze different loan categories and trends.

## Conclusion

This project demonstrates how SQL and Power BI can be used to organize, analyze, and visualize bank loan data. The three dashboards provide an overall summary, trend analysis, and loan-level details. Together, they make key metrics and patterns easier to explore and support data-informed reporting and financial analysis.

## Author

**Data Analyst Portfolio Project**

Skills demonstrated: SQL, PostgreSQL, Power BI, data analysis, KPI reporting, and data visualization.
