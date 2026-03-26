# 🏥 Healthcare Workforce Analytics Project (PBJ Data Insights)

This project analyzes healthcare staffing trends using **Payroll-Based Journal (PBJ)** and **Provider Information datasets** to uncover workforce imbalances across states, job roles, and facility performance ratings.

The primary focus is to identify patterns in **contractor vs employee staffing hours** and evaluate how staffing structure may impact **cost, workforce stability, and quality of care**.

---

## 📌 Project Objective

Healthcare facilities often rely on a mix of **full-time employees** and **contract workers**. While contractors provide flexibility, over-reliance on them can lead to:

- Increased operational costs  
- Workforce instability  
- Training and skill gaps  
- Potential decline in service quality  

This project aims to provide insights for leadership teams to support better staffing strategies.

---

## 📊 Datasets Used

- **PBJ (Payroll-Based Journal)**  
  Includes workforce hours data by job role and facility.
  
- **Provider Information Dataset**  
  Contains facility details, location, and performance indicators such as ratings.

---

## 🛠️ Technologies Used

- **Python**
- **Google Colab**
- Data Analysis Libraries:
  - Pandas
  - NumPy
  - Matplotlib / Seaborn

---

## 🔍 Key Insights

### Insight 1: High Contractor Dependency in RNDON Roles (Kansas)

The **RNDON (Registered Nurse Director of Nursing)** role shows a strong dominance of contractor hours.

- Contractors represent **~66%** of total staffing hours  
- Employees represent **~33%**  
- Kansas shows extreme reliance where contractors account for **~80%**  

📌 **Leadership Concern:**  
Heavy contractor dependence may indicate hiring challenges, skill shortages, and potential cost inefficiency.

---

### Insight 2: RN Administration Role Over-Reliance in New York

In **RNadmin (Registered Nurse Administration)** roles:

- New York workforce is approximately:
  - **80% contractors**
  - **20% employees**

📌 **Impact:**  
Such staffing imbalance may lead to workforce instability and increased long-term expenses.

---

### Insight 3: Outlier Pattern in LPN Administration Contract Hours

In the **LPNadmin (Licensed Practical Nurse Administration)** role, an outlier was identified where contract hours were significantly higher than employee hours.

📌 **Leadership Risk:**  
Because LPNadmin overlaps clinical + administrative responsibilities, heavy contractor staffing could lead to:

- Skill gaps due to workforce turnover  
- Reduced continuity in care delivery  
- Higher training requirements  
- Lower morale among full-time staff  

---

### Insight 4: MedAide Role in Kansas Shows High Contractor Dependency

Kansas displays a critical staffing dependency for **MedAide roles**:

- Over **90%** of staffing is contractor-based

Additionally, many counties in Kansas still have **less than 3-star ratings**, suggesting that even with resources (beds/equipment), performance outcomes may suffer due to workforce instability.

📌 **Key Observation:**  
High contractor reliance may be impacting operational efficiency and service quality.

---

### Insight 5: Registered Nurse (RN) Role Imbalance in New York

New York shows heavy reliance on contractors even in **Registered Nurse (RN)** roles, raising questions such as:

- Are contractors paid significantly higher than employees?
- Is full-time hiring difficult in this region?
- Is flexibility driving contractor preference?
- Is demand seasonal or temporary?
- Does this impact care continuity and patient outcomes?

---

## 📌 Business Recommendations

Based on the analysis, key recommendations include:

- Reduce over-dependence on contract workers in critical roles  
- Improve workforce stability through better hiring and retention strategies  
- Investigate skill matrix gaps and role-based hiring challenges  
- Enhance training programs for operational consistency  
- Track staffing distribution alongside facility performance ratings  

---

## 📈 Conclusion

The analysis highlights a strong workforce imbalance across multiple job roles and states, particularly in **Kansas** and **New York**, where contractor reliance is significantly higher than employee staffing.

A more balanced staffing strategy can improve:

- Cost efficiency  
- Workforce retention  
- Operational stability  
- Quality of healthcare delivery  

---

## 📂 Project Deliverables

- Data cleaning and transformation of PBJ + Provider datasets  
- Workforce distribution analysis (employee vs contractor hours)  
- Role-based and state-based insights  
- Leadership-focused recommendations for staffing optimization  

---
