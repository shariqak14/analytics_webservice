import argparse
import pprint, os
from ln2sql import Ln2sql

# import connection as conn


def print_db_output(out_data):
    for val in out_data:
        pprint.pprint("{0}".format(val))


def write_to_file(fl_path, fl_name, data_content):
    with open(fl_path + "/" + fl_name, "w") as fl_obj:
        fl_obj.write(data_content)
    return


def main():
    # sql_conn_obj = conn.DB_Connection()
    # ddl_qry = 'SHOW CREATE TABLE patient;'

    # ddl_output = sql_conn_obj.exec_sql(ddl_qry)
    # new_ddl_output = ddl_output[0][1]+' ;\n'
    # print("\nDDL extracted ..\n\nPrinting DDL output ....\nType of output is : {0}".format(type(ddl_output[0])))

    # pprint.pprint(new_ddl_output)
    # fl_path = os.getcwd()+'/ln2sql/'
    # fl_name = 'patient.sql'
    # write_to_file(fl_path, fl_name, new_ddl_output)

    arg_parser = argparse.ArgumentParser(
        description="A Utility to convert Natural Language to SQL query"
    )
    arg_parser.add_argument("-i", "--query", help="Input query to parse", required=True)

    args = arg_parser.parse_args()

    ln2sql = Ln2sql(
        database_path="patient.sql",
        language_path="english.csv",
        thesaurus_path="th_english.dat",
    ).get_query(args.query)

    # data_output=sql_conn_obj.exec_sql(ln2sql)
    # print_db_output(data_output)
    # sql_conn_obj.close_connection()


if __name__ == "__main__":
    main()
