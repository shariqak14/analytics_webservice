import pandas as pd
import os, sqlite3


def get_parsed_data():
    db_path = os.path.join(os.path.dirname(__file__), "database.sqlite3")
    conn = sqlite3.connect(db_path)

    df = pd.read_csv("cars.csv")
    df.to_sql("cars", conn, if_exists="append", index=False)

    cursor = conn.cursor()

    cursor.execute("SELECT * from cars;")

    desc = cursor.description
    column_names = [col[0] for col in desc]

    result = cursor.fetchall()

    parsed_result = [dict(zip(column_names, row)) for row in result]

    return parsed_result
