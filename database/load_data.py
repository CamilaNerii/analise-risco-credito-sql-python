import pandas as pd
import sqlite3
import os

base_dir = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))


csv_path = os.path.join(base_dir, 'data', 'german_credit_data.csv')
db_path = os.path.join(base_dir, 'database', 'credit_analysis.db')


df = pd.read_csv(csv_path)


df = df.rename(columns={
    'alter': 'idade'
})

conn = sqlite3.connect(db_path)


df.to_sql(
    'german_credit_data',
    conn,
    if_exists='replace',  
    index=False
)

conn.close()


print("Dados importados com sucesso!")
print("Total de linhas inseridas:", len(df))
