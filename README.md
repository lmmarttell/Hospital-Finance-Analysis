# Hospital Finance Analysis

## 📊 Project Overview

**Dataset Size:** 2,156 Patients | 8 Clinical Departments  
**Total Charges:** $24.5 Million  
**Total Payments Collected:** $15.3 Million  
**Collection Rate:** 62.4%  
**Outstanding AR:** $9.2 Million  
**Tools Used:** SQL, Tableau, Excel  
**Focus:** Revenue optimization, payer performance, department profitability

This analysis examines hospital financial operations to identify revenue optimization opportunities, improve collection efficiency, and enhance department-level profitability.

---

## 💼 Business Problem

Healthcare organizations face persistent financial challenges impacting sustainability:
- **Revenue Leakage:** $9.2M in outstanding accounts receivable represents significant cash flow constraints
- **Payer Variability:** Collection rates differ dramatically across insurance providers (ranging 48% to 78%)
- **Department Inefficiency:** Some high-revenue departments underperform on collection metrics
- **Patient Type Disparities:** Self-pay patients have 34% lower collection rates than insured patients
- **Operational Risk:** Delayed collections limit investment capacity in clinical infrastructure

**Organizations need strategic financial analysis to optimize revenue capture and improve operational efficiency.**

---

## 🎯 Key Questions Answered

### Revenue Performance
- What is our baseline revenue across all departments?
- How does collection performance vary by department?
- Which patient types drive the most revenue?

### Payer Analysis
- Which insurance payers have the best/worst collection rates?
- How much revenue concentration exists with top payers?
- Which payer relationships pose collection risks?

### Department Performance
- Which departments are most profitable (revenue vs. collection)?
- Are high-revenue departments collecting efficiently?
- Where are collection bottlenecks?

### Financial Optimization
- What is the revenue per patient by department?
- How do self-pay vs. insured collections differ?
- What is the optimal revenue strategy by department?

---

## 🔑 Key Findings

### Finding 1: Cardiology Dominates Revenue But Lags on Collections

**Observation:**
- Cardiology total charges: **$4.8M** (19.6% of hospital revenue)
- Cardiology collection rate: **58.3%** (below hospital average of 62.4%)
- Collected from Cardiology: **$2.8M** vs. **$2.0M uncollected**

**Evidence:**
```
Department Analysis - Cardiology:
────────────────────────────────────────────
Total Charges:        $4,800,000    (100%)
Payments Collected:   $2,797,000    (58.3%)
Outstanding AR:       $2,003,000    (41.7%)
────────────────────────────────────────────
```

**Implication:** Despite being the highest revenue generator, Cardiology underperforms on collection (4.1 percentage points below hospital average). Improving Cardiology collection to hospital average would recover **$164K annually**. This requires targeted payer analysis and process improvements specific to cardiac procedures.

---

### Finding 2: Self-Pay Patients Generate Only 12% of Revenue but Drive 28% of AR

**Observation:**
- Self-pay patient charges: **$2.9M** (11.8% of total)
- Self-pay collection rate: **41.2%** (vs. 72.5% for insured patients)
- Self-pay AR: **$1.7M** (18.5% of total AR despite being only 11.8% of revenue)

**Evidence:**
```
Patient Type Comparison:
─────────────────────────────────────────────────
Patient Type    Charges    Collections   Rate
─────────────────────────────────────────────────
Insured         $21.6M     $15.66M       72.5%
Self-Pay        $2.9M      $1.19M        41.2%
─────────────────────────────────────────────────
```

**Implication:** Self-pay patients are a disproportionate source of bad debt. The 31.3 percentage point gap between insured and self-pay collection rates suggests:
- Inadequate financial counseling at time of service
- Lack of payment plan infrastructure
- Underutilization of charity care programs

**Potential impact:** Implementing aggressive patient financial services (payment plans, prompt billing, financial assistance) could improve self-pay collections by 15-20%, recovering **$435K-$580K annually**.

---

### Finding 3: Medicare Dominates Volume but Blue Cross Leads Collections

**Observation:**
- Medicare charges: **$9.1M** (37.1% of total - highest volume)
- Medicare collection rate: **64.8%** (above average)
- Blue Cross collection rate: **78.2%** (highest among major payers)
- Blue Cross collects **$3.1M from $4.0M charges** (highest dollars collected)

**Evidence:**
```
Top 5 Payers Performance:
────────────────────────────────────────────────────
Payer              Charges    Collections   Rate
────────────────────────────────────────────────────
Medicare           $9.1M      $5.9M         64.8%
Blue Cross         $4.0M      $3.1M         78.2%
UnitedHealthcare   $3.8M      $2.3M         60.5%
Cigna              $2.4M      $1.7M         70.8%
Aetna              $2.1M      $1.3M         61.9%
────────────────────────────────────────────────────
```

**Implication:** Medicare's sheer volume (37% of revenue) makes it strategically critical, but Blue Cross's superior 78.2% collection rate shows best-practice performance. The 17.7 percentage point gap between Blue Cross (78.2%) and UnitedHealthcare (60.5%) indicates operational or contractual differences. 

**Recommendation:** Analyze Blue Cross processes and contracts to identify best practices applicable to UnitedHealthcare accounts.

---

### Finding 4: Surgical Services Show Highest Profitability Per Patient

**Observation:**
- Surgical Services average charge per patient: **$18,432**
- Surgical Services collection rate: **71.3%** (highest among all departments)
- Revenue per patient: **$13,132**
- Surgical Services AR aging: **38 days average** (fastest collection cycle)

**Evidence:**
```
Department Efficiency Metrics:
──────────────────────────────────────────────
Department         Avg Charge   Collection   Days Outstanding
──────────────────────────────────────────────
Surgical Services  $18,432      71.3%        38 days
Orthopedics        $16,891      68.7%        52 days
Cardiology         $15,625      58.3%        74 days
Oncology           $14,201      64.2%        61 days
Neurology          $12,556      69.8%        45 days
Emergency          $8,932       59.1%        89 days
Pediatrics         $7,845       73.5%        41 days
Primary Care       $5,123       65.3%        58 days
──────────────────────────────────────────────
```

**Implication:** Surgical Services demonstrates optimal performance across three metrics: highest revenue per patient ($18,432), excellent collection rate (71.3%), and fastest AR turnover (38 days). This suggests:
- Strong pre-authorization processes
- Effective patient financial counseling before elective procedures
- Superior payer relationships for surgical codes

**Recommendation:** Use Surgical Services model as template for improving other departments, particularly Emergency (slowest AR aging at 89 days).

---

## 💡 Business Recommendations

### Immediate Actions (0-30 days)

1. **Implement Self-Pay Financial Services Initiative**
   - Hire financial counselor for self-pay patient population
   - Establish payment plan options (3-month, 6-month, 12-month)
   - Create financial hardship application for charity care
   - Expected impact: Improve self-pay collection rate from 41.2% to 50-55%
   - Financial benefit: $435K-$580K annually

2. **Analyze Cardiology Payer Performance**
   - Identify which payers drive the 58.3% collection shortfall
   - Conduct claims review on high-value cardiac procedures
   - Review contracted rates vs. actual payments received
   - Expected impact: Improve Cardiology collection to 63%+
   - Financial benefit: $164K+ annually

3. **Emergency Department Collection Audit**
   - Emergency has slowest AR aging (89 days) - investigate why
   - Review point-of-service collection processes
   - Assess self-pay vs. insured collection disparities in ER
   - Expected impact: Reduce DSO from 89 to 70 days
   - Financial benefit: $280K+ in accelerated cash flow

### Strategic Initiatives (30-90 days)

4. **Replicate Surgical Services Model Across Departments**
   - Document Surgical Services pre-auth and financial processes
   - Train other departments on best practices (especially Emergency, Cardiology)
   - Implement pre-visit financial counseling for non-emergency procedures
   - Expected impact: Reduce average DSO from 62 to 50 days
   - Financial benefit: $500K+ in accelerated collections

5. **Optimize UnitedHealthcare Relationship**
   - UnitedHealthcare at 60.5% vs. Blue Cross at 78.2% (17.7 point gap)
   - Conduct claims analysis to identify denial patterns
   - Negotiate contract improvements or payment terms
   - Expected impact: Improve UnitedHealthcare collection to 70%+
   - Financial benefit: $361K+ annually

6. **Deploy Automated Claims Management System**
   - Implement AR aging alerts (30-day, 60-day, 90-day triggers)
   - Automate claim follow-up for unpaid/underpaid claims
   - Create payer-specific appeal workflows
   - Expected impact: Reduce DSO by 10-15 days, improve collection rate by 3-5%
   - Financial benefit: $600K+ in combined benefits

### Long-Term Strategy (90+ days)

7. **Build Revenue Optimization Dashboard**
   - Real-time visibility into collection rates by payer, department, patient type
   - Automated alerts for underperforming areas
   - Monthly trending and benchmarking analysis
   - Expected impact: Enable data-driven revenue decisions

8. **Develop Patient Financial Engagement Program**
   - Patient-facing portal for bill visibility and payment
   - SMS/email payment reminders
   - Financial hardship resources and navigation
   - Expected impact: Improve patient payment collections by 15-20%

9. **Establish Payer Performance Contracts**
   - Measure Blue Cross (78.2%) as gold standard
   - Create scorecard for all major payers (collection rate, denial rate, payment timeliness)
   - Renegotiate underperforming payer contracts quarterly
   - Expected impact: Drive overall collection rate toward 70%+

10. **Implement Predictive Analytics Model**
    - Identify claims characteristics correlated with slow payment
    - Flag high-risk claims before submission
    - Predict AR aging and cash flow impact
    - Expected impact: Proactive revenue cycle management

---

## 🎓 Skills Demonstrated

- ✅ **Financial Analysis** — Revenue, collections, AR metrics
- ✅ **SQL Query Writing** — Claims and patient data extraction
- ✅ **Tableau Dashboard Design** — Multi-dimensional financial visualization
- ✅ **Healthcare Operations** — Patient types, payers, department dynamics
- ✅ **Payer Analysis** — Insurance contract performance evaluation
- ✅ **Statistical Analysis** — Collection rate comparisons, variance analysis
- ✅ **Process Improvement** — Identifying bottlenecks and optimization opportunities
- ✅ **Financial Acumen** — Cash flow, profitability, operational efficiency
- ✅ **Business Storytelling** — Communicating findings to leadership
- ✅ **Strategic Recommendations** — Actionable insights with financial impact

---

## 📈 Key Metrics & Definitions

| Metric | Definition | Current Value | Target |
|--------|-----------|---|---|
| **Total Charges** | Sum of all billed services | $24.5M | Baseline |
| **Total Collections** | Actual cash received | $15.3M | Increase |
| **Collection Rate** | % of charges collected | 62.4% | 70%+ |
| **Accounts Receivable** | Outstanding balance owed | $9.2M | Decrease |
| **Days Sales Outstanding (DSO)** | Average days to collect | 62 days | 45 days |
| **AR Aging 90+** | High-risk aged receivable | $2.8M | <15% |
| **Self-Pay Collection Rate** | Collections from uninsured | 41.2% | 55%+ |
| **Revenue per Patient** | Total charges ÷ patients | $11,357 | Increase |

---

## 📊 Dashboard Overview

**Tableau Dashboard: Hospital Financial Analysis**

The dashboard includes multiple views:
1. **Executive Summary** — Key metrics (charges, collections, AR, collection rate)
2. **Department Performance** — Revenue, collections, and profitability by department
3. **Payer Analysis** — Collection rates and financial performance by insurance company
4. **Patient Type Analysis** — Insured vs. self-pay performance comparison
5. **Accounts Receivable Aging** — AR distribution by age bucket
6. **Monthly Trends** — Charges and collections trending over time

---

## 📁 Project Files

| File | Purpose |
|------|---------|
| `/Data/Hospital_Finance.csv` | Raw hospital financial data |
| `/Data/Hospital_Finance.xlsx` | Processed financial dataset |
| `/SQL/Hospital_Finance_SQL_Queries.sql` | SQL analysis queries |
| `/Visualizations/HealthcareRevenue Dashboard.pbix` | Interactive Tableau dashboard |
| `README.md` | This documentation |

---

## 🚀 Quick Start

1. **Explore the Dashboard:** Open the Tableau dashboard in `/Visualizations/`
2. **Review the Data:** Load `/Data/Hospital_Finance.csv` to examine transaction records
3. **Understand the Logic:** Reference `/SQL/Hospital_Finance_SQL_Queries.sql` for calculation methodology

---

## 💰 Financial Impact Summary

| Opportunity | Current Situation | Potential Improvement | Annual Benefit |
|---|---|---|---|
| **Self-Pay Collections** | 41.2% collection rate | Improve to 50-55% | $435K-$580K |
| **Cardiology Collections** | 58.3% collection rate | Improve to 63%+ | $164K+ |
| **Emergency DSO** | 89 days outstanding | Reduce to 70 days | $280K+ |
| **UnitedHealthcare** | 60.5% collection rate | Improve to 70%+ | $361K+ |
| **Automated Collections** | Manual AR management | System automation | $600K+ |
| **TOTAL OPPORTUNITY** | 62.4% collection rate | 70%+ collection rate | **$1.8M-$2.4M** |

---

## 🔮 Future Improvements

- [ ] **Predictive Analytics Model** — ML model to predict high-risk receivables
- [ ] **Patient Portal** — Real-time bill viewing and payment capability
- [ ] **Automated Appeals Engine** — Identify and process insurance appeals automatically
- [ ] **Real-Time Collections Dashboard** — Daily metrics for collections team
- [ ] **Payer Contract Benchmarking** — Compare contract terms across market
- [ ] **Department Profitability Analysis** — Include cost data for true profit calculation

---

## 💬 Questions & Methodology

Full methodology and detailed calculations are documented in the SQL query file. For questions about findings or recommendations, please refer to the supporting analysis.

---

## 📄 License

This project is open-source under the MIT License. Feel free to use for learning purposes.




