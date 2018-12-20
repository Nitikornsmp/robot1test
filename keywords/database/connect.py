# import importlib

# try:
#     import ConfigParser
# except:
#     import configparser as ConfigParser

# from robot.api import logger

# class ConnectionManager(object):

#     def __init__(self):    
        
#         self._dbconnection = None
#         self.db_api_module_name = None

# def connect_to_database(self, dbapiModuleName=None, dbName=None, dbUsername=None, dbPassword=None, dbHost=None, dbPort=None):

#         config = ConfigParser.ConfigParser()
        
#         dbapiModuleName = dbapiModuleName or config.get('default', 'dbapiModuleName')
#         dbName = dbName or config.get('default', 'dbName')
#         dbUsername = dbUsername or config.get('default', 'dbUsername')
#         dbPassword = dbPassword if dbPassword is not None else config.get('default', 'dbPassword')
#         dbHost = dbHost or config.get('default', 'dbHost') or 'localhost'
#         dbPort = int(dbPort or config.get('default', 'dbPort'))

#         self.db_api_module_name = dbapiModuleName
       
#         db_api_2 = importlib.import_module(dbapiModuleName)
#         if dbapiModuleName in ["pyodbc", "pypyodbc"]:
#             dbPort = dbPort or 1433
#             logger.info('Connecting using : %s.connect(DRIVER={SQL Server};SERVER=%s,%s;DATABASE=%s;UID=%s;PWD=%s)' % (dbapiModuleName, dbHost, dbPort, dbName, dbUsername, dbPassword))
#             self._dbconnection = db_api_2.connect('DRIVER={SQL Server};SERVER=%s,%s;DATABASE=%s;UID=%s;PWD=%s' % (dbHost, dbPort, dbName, dbUsername, dbPassword))
        
#         else:
#             logger.info('Connecting using : %s.connect(database=%s, user=%s, password=%s, host=%s, port=%s) ' % (dbapiModuleName, dbName, dbUsername, dbPassword, dbHost, dbPort))
#             self._dbconnection = db_api_2.connect(database=dbName, user=dbUsername, password=dbPassword, host=dbHost, port=dbPort)

#     def disconnect_from_database(self):

#             logger.info('Executing : Disconnect From Database')
#             self._dbconnection.close()

#     def set_auto_commit(self, autoCommit=True):
        
#         logger.info('Executing : Set Auto Commit')
#         self._dbconnection.autocommit = autoCommit

# def join_two_strings(arg1, arg2):
#     return arg1 + " " + arg2
# import sys, pdb; pdb.Pdb(stdout=sys.__stdout__).set_trace()
import importlib, os, pyodbc 
def __init__(self):

    self._dbconnection = None
    self._db_api_module_name = None

def connect_database(self, dbapiModuleName=None, dbHost=None, dbName=None, dbUsername=None ,dbPassword=None ,Trusted_Connection= None):
        
        dbName = dbName
        dbUsername = dbUsername 
        dbPassword = dbPassword or '' 
        dbHost = dbHost 
        Trusted_Connection = Trusted_Connection or 'yes'
       
        self.db_api_module_name = dbapiModuleName

        db_api_2 = importlib.import_module(dbapiModuleName)

        self._dbconnection = db_api_2.connect('DRIVER={SQL Server}; Server=%s; DATABASE=%s;UID=%s;PWD=%s;Trusted_Connection= %s' % (dbHost, dbName, dbUsername, dbPassword, Trusted_Connection))
       
       
        # return pyodbc.connect('DRIVER={SQL Server};SERVER=%s;DATABASE=%s;Username=%s;Password=%s;Trusted_Connection=%s)' % (Server,Database,Username,Password,Trusted_Connection))

        

        # conn = pyodbc.connect('Driver={SQL Server};'
        #               'Server=localhost\SQLEXPRESS;'
        #               'Database=NopTest;'
        #               'Trusted_Connection=yes;')
