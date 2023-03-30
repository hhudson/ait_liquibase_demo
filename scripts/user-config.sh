#!/bin/bash

# If you need to register any aliases in bash uncomment these lines
# shopt -s expand_aliases
# This should reference where you store aliases (or manually define them)
# source ~/.aliases.sh

# Connection string to development environment
DB_ORIG_CONN="/nolog @/Users/hayhudso/hhh/connections/hayden/connect_orig_schema.sql"
DB_DEST_CONN="/nolog @/Users/hayhudso/hhh/connections/hayden/connect_dest_schema.sql"

# SQLcl binary (either sql or sqlcl depending on if you changed anything)
# If using a docker container for SQLcl ensure the run alias does not include the "-it" option as TTY is not necessary for these scripts
SQLCL=sql

# sql*plus binary
# If using a docker container for sqlplus ensure the run alias does not include the "-it" option as TTY is not necessary for these scripts
SQLPLUS=sqlplus


# *** VSCode settings ***

# Compile file: chose  or 
# Recommended to use  as it's quicker
VSCODE_TASK_COMPILE_BIN=$SQLCL

# File to compile. Options:
# \$FILE_RELATIVE_PATH: Will evaluate to relative to project ex: views/my_view.sql
# \$FILE_FULL_PATH: Will evalutate to full path to file ex:
# 
# If using sqlplus for docker an example may be:
# VSCODE_TASK_COMPILE_FILE=/sqlplus/\$FILE_RELATIVE_PATH 
# Note: You need to escape the "$" here so it should say "\$FILE_FULL_PATH"
VSCODE_TASK_COMPILE_FILE=\$FILE_FULL_PATH

# This code will be run before the file is executed
read -d '' VSCODE_TASK_COMPILE_SQL_PREFIX << EOF
-- Add any custom alter statements etc here
-- alter session set plsql_warnings = 'ENABLE:ALL';
EOF

