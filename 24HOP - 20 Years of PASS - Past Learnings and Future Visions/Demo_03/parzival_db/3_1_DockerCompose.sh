# DEMO 3 - Customized SQL Server instance (docker-compose)
#   1- Show Dockerfile
#   2- Show folder structure
#   3- Show application scripts
#   4- Show database scripts
#   5- Execute docker compose
#   6- Show results in ADS
#   6- Cleanup
# -----------------------------------------------------------------------------

# 5- Execute docker compose
# Navigate to 24HOP directory
cd /Users/carlos/Documents/24hop/Demo_03

# Run Docker compose
docker-compose up

# --------------------------------------
# ADS step
# --------------------------------------
# 6- Show results in ADS

# 6- Cleanup
# Run Docker compose
docker-compose down
docker rm -f parzival
docker rmi 