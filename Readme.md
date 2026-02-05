Add this to your path

alias pod='docker exec -it adzy-workbench-container psql -h adzy-db -U postgres -d adzy_dev'
alias adzy='docker exec -it adzy-container mix'