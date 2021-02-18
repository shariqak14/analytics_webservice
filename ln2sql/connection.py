import mysql.connector
import sys


class DB_Connection:
    def __init__(self):
        self.connect_to_db()
        self.__result_set = None

    def connect_to_db(self):
        self.__conn_obj = mysql.connector.connect(
            user="username", password="password", host="127.0.0.1", database="hospital"
        )
        self.__cursor = self.__conn_obj.cursor()

    def exec_sql(self, qry):
        print("\nExecuting query from cursor")
        self.__cursor.execute(qry)
        print("\nQuery executed ....\nGetting result set:-\n")
        self.__result_set = self.__cursor.fetchall()
        print(
            "\nConnection Object is : {0}\nCursor Object is : {1}\nResult set type is : {2}".format(
                self.__conn_obj, self.__cursor, type(self.__result_set)
            )
        )
        return self.__result_set

    def close_connection(self):
        self.__cursor.close()
        self.__conn_obj.close()


if __name__ == "__main__":
    qry_lst = sys.argv[1:]
    qry = ";\n".join(qry_lst)
    connect_to_db(qry)
