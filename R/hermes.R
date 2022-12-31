#-------------------------------------------------------------------------------
# Summon Hermes
# Created by: Ioannis Oikonomidis
#-------------------------------------------------------------------------------

summon_hermes <- function(dir = getwd()) {
  usethis::use_course(url = 'https://github.com/thechibo/hermes/archive/master.zip',
                      destdir = dir)
}

