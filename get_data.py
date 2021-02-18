import pandas as pd
import os, sqlite3


def get_parsed_data():
    db_path = os.path.join(os.path.dirname(__file__), "database.sqlite3")
    conn = sqlite3.connect(db_path)

    df = pd.read_csv("patients.csv").dropna(axis=1, how="any")
    df.to_sql("patients", conn, if_exists="replace", index=False)

    cursor = conn.cursor()

    cursor.execute("SELECT * from patients;")

    desc = cursor.description
    column_names = [col[0] for col in desc]

    result = cursor.fetchall()

    parsed_result = [dict(zip(column_names, row)) for row in result]

    return parsed_result
