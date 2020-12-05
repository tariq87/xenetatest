import os
DB = {
    "name": os.getenv('DBNAME') ,
    "user": os.getenv('DBUSER'),
    "host": os.getenv('DBHOST')
}
