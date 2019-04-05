# DEMO 1 - Basic container
#   1- Start a container
#   2- Connect from ADS
#   3- Basic commands
#   4- Connect through bash
#   5- Run query using sqlcmd
#   6- Run basic Docker client commands
#   7- Delete container
# -----------------------------------------------------------------------------

# 1- Starting container
docker run \
--name 20YearsOfPass \
--hostname 20YearsOfPass \
--env 'ACCEPT_EULA=Y' \
--env 'MSSQL_SA_PASSWORD=20Ye4rsOfP@ss#' \
--publish 1400:1433 \
--detach mcr.microsoft.com/mssql/server:2017-CU13-ubuntu

# 2- Connecting from Azure Data Studio:
    # server: localhost,1400
    # database: master
    # authenticationType: SqlLogin
    # user: sa
    # password: 20Ye4rsOfP@ss#
    # savePassword: true
    # profileName: 24HOP

# 3- Basic management through Docker client commands
# Start \ stop
docker stop 20YearsOfPass
docker start 20YearsOfPass

# 4- Connect through bash
docker exec -it 20YearsOfPass "bash"

# 5- Run query using sqlcmd
/opt/mssql-tools/bin/sqlcmd -H localhost -U SA -P 20Ye4rsOfP@ss#
select @@servername
select @@version

# 6- Run basic Docker client commands
dpsa
docker images
docker container ls

# 7- Delete container
docker rm 20YearsOfPass