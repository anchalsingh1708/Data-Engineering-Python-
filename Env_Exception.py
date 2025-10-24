# Using RUN Time Arguments in Python Application

import sys

args=sys.argv
arg=arg[1]
prog_file=args[0]  #program filename will be assigned to to prog_file

print(f'Hello {arg} from {prog_file}')

# Terminal -> python hw.py world

# Hello World from hw.py

#Setting environment variables to give access to specific users 

$Env:HOST ="appdbdev"   #host is env varibale
    
    
PS C:\Users\anchsingh\Anchal Singh\Python DE Udemy> $Env:HOST="appdbdev"
PS C:\Users\anchsingh\Anchal Singh\Python DE Udemy> $Env:HOST           
appdbdev
PS C:\Users\anchsingh\Anchal Singh\Python DE Udemy> import os

import os 

type(os.environ)

os._Environ

# appdev -> appdbdev(retail_db, retail_user,retaildevpassword)
# appuat -> appdbuat(retail_db, retail_user,retaildevpassword)


os.environ.get('HOST')

appdbdev

#Raising exceptions in python applications

if len(files)==0:
    raise NameError(f'No files found for {ds_name}')

#Exception Handling in File Format Converter Application

try:
    
except NameError as ne:
    print(f'Errpr Processing {ds_name}')
