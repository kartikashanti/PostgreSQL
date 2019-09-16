#install package RPostgresSQL
install.packages("RpostgreSQL")

#Load.package
library(RPostgreSQL)

#create a connection
#save dbeaver password access in R
pw <- {
  "passwordiykra"
  }

#load the PostgreSQL driver
drv <- dbDriver("PostgreSQL")

#creates a connection to the postgres database
#note that "con" will be used later in each connection to database
con <- dbConnect(drv, dbname="training",
                 host = "157.230.240.246", port = 5432,
                 user = "iykra_trainee", password = pw)

#check the iris table
dbExistsTable(con,"iris")

#View list table in database into dbeaver
