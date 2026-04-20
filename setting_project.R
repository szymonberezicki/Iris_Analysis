# create a project structure
project_setup <- function(){
  folders <- c('data', 'results', 'figures', 'scripts')
  mainDir <- getwd()
  sapply(folders, function(subDir){
    dir.create(file.path(mainDir, subDir))
  })
}

# run the fun
project_setup()

# install if not already
if(!(require(renv))) install.packages('renv')

# check the renv version and run init
packageVersion('renv')
renv::init()
renv::status()
renv::snapshot()

# check and compare library paths
.libPaths()
lapply(.libPaths(), list.files)
find.package('ggplot2')

