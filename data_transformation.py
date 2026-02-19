import pandas as pd
import glob

def clean_aviation_data():
    """
    Cleans and merges flight log CSVs for PostgreSQL ingestion.
    Handles type-casting errors and standardizes pilot records.
    """
    # 1. Load and merge all flight log batches
    all_files = glob.glob('FLD*.csv')
    df_list = [pd.read_csv(f) for f in all_files]
    combined_df = pd.concat(df_list, ignore_index=True)

    # 2. Fix Data Type Inconsistency (The '4.0' Passenger Error)
    # PostgreSQL 'INTEGER' types reject decimals. We cast to float then int.
    combined_df['passengers'] = combined_df['passengers'].fillna(0).astype(float).astype(int)

    # 3. Standardize Pilot Names
    # Ensuring consistency for J. Reyes across all datasets
    combined_df['pilots'] = combined_df['pilots'].str.replace('J.Reyes', 'J. Reyes')

    # 4. Chronological Sorting
    combined_df['flight_date'] = pd.to_datetime(combined_df['flight_date'])
    combined_df = combined_df.sort_values(by='flight_date')

    # 5. Export for SQL Ingestion
    combined_df.to_csv('N528RR_Fixed_Logs.csv', index=False)
    print(f"Successfully processed {len(combined_df)} flight records.")

if __name__ == "__main__":
    clean_aviation_data()
