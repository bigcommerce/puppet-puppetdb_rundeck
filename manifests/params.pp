# == Class puppetdb_rundeck::params
#
# This class is meant to be called from puppetdb_rundeck
# It sets variables according to platform
#
class puppetdb_rundeck::params {
  case $::osfamily {
    'Debian': {
      $service_name = 'puppetdb_rundeck'
    }
    'RedHat', 'Amazon': {
      $service_name = 'puppetdb_rundeck'
    }
    default: {
      fail("${::operatingsystem} not supported")
    }
  }

  $version = 'present'

  $puppetdb_host = 'localhost'
  $puppetdb_post = '8080'
  $port = '4567'
}
