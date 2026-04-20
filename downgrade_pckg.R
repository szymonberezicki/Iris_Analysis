# downgrading ggplot 
packageVersion('ggplot2')
renv::install('ggplot2@3.5.0')

# update lock.file
renv::status()
renv::snapshot()

# restore to initial version
renv::history()
renv::revert(commit = '9dca218ebea5b4a09c35728f0e1f72b45874ba8a')
renv::restore()
