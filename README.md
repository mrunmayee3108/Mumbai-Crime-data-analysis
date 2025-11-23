# 🚨🚓 Mumbai Crime Data Analysis (September 2025)


<p align="left">

  <img src="https://cdn.simpleicons.org/python" height="48" />
  &nbsp;&nbsp;

  <img src="https://cdn.simpleicons.org/pandas" height="48" />
  &nbsp;&nbsp;

  <img src="https://cdn.simpleicons.org/mysql/4479A1" height="48" />
  &nbsp;&nbsp;

  <img src="https://cdn.simpleicons.org/sqlalchemy" height="48" />
  &nbsp;&nbsp;

  <img src="https://cdn.simpleicons.org/plotly" height="48" />

</p>


**Python · Pandas · MySQL · SQLAlchemy · Data Visualization**

---

## 📘 Description

**Mumbai Crime Data Analysis** is an end-to-end analytics project built using **Python (Pandas)** and **MySQL**, analyzing official crime statistics of **September 2025** published by Mumbai Police.

The dataset spans 6 major crime categories:

* IPC Crimes
* Crimes Against Women
* NDPS (Drug Offences)
* Brothels & Trafficking
* Economic Offences
* Cyber Crimes

The project cleans and prepares real-world data, generates detailed insights, creates derived metrics, imports the final dataset into a structured SQL database, and visualizes crime patterns to understand trends, severity, and detection performance.

Developed by **Mrunmayee Potdar**, this project demonstrates a complete data workflow suitable for analytics portfolios.

---

## ✨ Features

<details>
<summary><strong>🔹 Data Cleaning & Processing</strong></summary>

* Removed inconsistent “Unnamed” columns
* Standardized column names from all 6 sheets
* Fixed missing/null values
* Computed derived fields:

  * Monthly change
  * Yearly change
  * Detection % change
* Cleaned all sheets into structured DataFrames

</details>

<details>
<summary><strong>🔹 Database Integration (MySQL)</strong></summary>

* Created **crime_analysis** database
* Automatically uploaded all 6 cleaned sheets using Pandas + SQLAlchemy
* Each sheet stored as its own table
* Ready for SQL-based analysis and dashboards

</details>

<details>
<summary><strong>🔹 Data Analysis (Pandas)</strong></summary>

* Top crimes by frequency
* Month-on-month comparison (Aug → Sep 2025)
* Year-to-year detection changes
* Crime category profiling
* High-severity vs high-frequency crime classification

</details>

<details>
<summary><strong>🔹 Visualizations</strong></summary>

* Bar charts for top crimes
* Detection performance visuals
* Crime comparisons across categories
* Monthly variation plots

</details>

<details>
<summary><strong>🔹 Key Insights</strong></summary>

* Theft & Molestation dominate IPC crimes
* Outraging Modesty is highest among women crimes
* Cybercrime detection remains low
* Murder & Dacoity show 100% detection rate
* NDPS cases show improved performance vs 2024

</details>

---

## 📁 Project Structure

```
mumbai-crime-data-analysis/
├── crimedata_simplified.xlsx     # Final cleaned dataset
├── mumbai_crime_analysis.ipynb   # Full Pandas analysis notebook
├── load_to_mysql.py              # Uploads Excel sheets to MySQL
├── schema.sql                    # Database & tables schema
├── queries.sql                   # Organized SQL queries
├── requirements.txt              # Python dependencies
└── README.md                     # Documentation
```

---

## 🛠️ Tech Stack

<details>
<summary><strong>🔧 Backend / Analytics</strong></summary>

* Python 3.8+
* Pandas
* NumPy
* Matplotlib
* SQLAlchemy
* PyMySQL

</details>

<details>
<summary><strong>🗄️ Database</strong></summary>

* MySQL 8
* SQLAlchemy ORM

</details>

<details>
<summary><strong>📓 Notebook Environment</strong></summary>

* Google Colab
* Jupyter Notebook

</details>

---

## 📦 Key Dependencies

```
pandas
numpy
matplotlib
sqlalchemy
pymysql
openpyxl
```

---

## 🚀 Quick Start

<details>
<summary><strong>1️⃣ Clone the repository</strong></summary>

```bash
git clone https://github.com/mrunmayee3108/Mumbai-Crime-data-analysis.git
cd Mumbai-Crime-data-analysis
```

</details>

<details>
<summary><strong>2️⃣ Install dependencies</strong></summary>

```bash
pip install -r requirements.txt
```

</details>

<details>
<summary><strong>3️⃣ Load data into MySQL</strong></summary>

```bash
python load_to_mysql.py
```

</details>

<details>
<summary><strong>4️⃣ Explore Analysis</strong></summary>

Open the notebook:
`mumbai_crime_analysis.ipynb`

</details>

---

## 🧠 Usage

* Study crime trends
* Compare August vs September 2025
* Identify low-detection, high-frequency crimes
* Read criminal pattern insights
* Extend into dashboards or ML models

---

## 🛠️ Development Setup

<details>
<summary><strong>Modify & Rebuild</strong></summary>

* Change schema in `schema.sql`
* Refresh database using `load_to_mysql.py`
* Extend insights in the notebook

</details>

---

## 👥 Contributing

Pull requests are welcome.
Fork → Branch → Commit → PR.

---

## 🐛 Known Issues

None currently.

---

## 📄 License

MIT License.

---

## 🙏 Acknowledgments

* Mumbai Police (Data Source)

---


