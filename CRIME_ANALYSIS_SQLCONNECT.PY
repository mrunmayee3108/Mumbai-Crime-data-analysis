import pandas as pd
from sqlalchemy import create_engine

sheets_to_load = {
    "IPC": "ipc",                     
    "women": "women",
    "ndps": "ndps",
    "brothels": "brothels",
    "ecconomic_offenses": "ecconomic_offenses",
    "cyber": "cyber"
}

engine = create_engine("mysql+pymysql://root:Msp%403108@localhost/crime_analysis")

print("Starting final data upload to MySQL...")

for sheet_name, table_name in sheets_to_load.items():
    try:
        df = pd.read_excel("crimedata_simplified.xlsx", sheet_name=sheet_name)
        df.to_sql(table_name, engine, if_exists='replace', index=False)
        print(f"Successfully uploaded sheet '{sheet_name}' to table '{table_name}'.")
        
    except Exception as e:
        print(f"Failed to process sheet '{sheet_name}'. Error: {e}")
        continue

print("\nData upload process completed successfully.")

if engine:
    engine.dispose()
