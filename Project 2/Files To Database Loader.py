 # to create connection with postgres database server
#!pip install ipython-sql

#pip install --user ipython-sql

# !pip install psycopg2-binary
# !pip install sqlalchemy

pip install pyodbc

# Create SQL Connection and Install Python Dependencies
import pyodbc
conn = pyodbc.connect('Driver={SQL Server};'
                      'Server=172.19.37.173;'
                      'Database=MIS_Practice;'
                      'UID=batteam;'
                      'PWD=mis@777')

cursor = conn.cursor()

query='select * from Employee_Data_Anchal'

cursor.execute(query)

data= cursor.fetchall()

# for row in data:
#     print(row)

# cursor.close()
# conn.close()

import pandas as pd
import warnings

warnings.filterwarnings("ignore")

query1='select top 10 * from Employee_Data_Anchal'

data1=pd.read_sql(query1, conn)

type(data1)

#Write CSV Data from File to Database Table


data1.to_sql(
    'Employee_Data_Anchal',
    conn,
    if_exists='replace',
    index=False
)

pd.read_sql('orders',conn)

# Important for building robust PIPELINES

import pandas as pd
df_reader=pd.read_csv(r'C:\Users\anchsingh\Anchal Singh\Python DE Udemy\Employee_Data_Anchal.csv',
                     
                     chunksize=10
                     )

for idx, df in enumerate(df_reader):
    print(f'Processing chunk {idx} with size {df.shape[0]} of orders')
    
    
# Processing chunk 0 with size 10 of orders
# Processing chunk 1 with size 10 of orders
# Processing chunk 2 with size 5 of orders





# data_to_insert = [tuple(None if pd.isna(value) else value for value in row) for row in Data.values]
# insert_query = '''INSERT INTO BE_Reporting.dbo.allprocess_em_acuity ([Date Coded],[EncounterId],[PatientMRN],[Coder ECN],[EM Code],[Process Name],[Site],[Context Id],[Provider Name],[Specialty Name]) 
#                 VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?,?)'''

# cursor.executemany(insert_query, data_to_insert)

# conn.commit()
# conn.close()
