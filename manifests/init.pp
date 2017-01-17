# Class: router
# ===========================
#
# Classe para provisionamento da configuração do router no CentOS.
#
# Parameters
# ----------
#
# Document parameters here.
#
# * `sample parameter`
# Explanation of what this parameter affects and what it defaults to.
# e.g. "Specify one or more upstream ntp servers as an array."
#
# Variables
# ----------
#
# Here you should define a list of variables that this module would require.
#
# * `sample variable`
#  Explanation of how this variable affects the function of this class and if
#  it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#  External Node Classifier as a comma separated list of hostnames." (Note,
#  global variables should be avoided in favor of class parameters as
#  of Puppet 2.6.)
#
# Examples
# --------
#
# @example
#    class { 'router':
#      ip => "192.168.0.15",
#      gateway => "192.168.0.1"
#    }
#
# Authors
# -------
#
# Author Name <eduardo_dicarte@yahoo.com.br>
#
# Copyright
# ---------
#
# Copyright 2017 RJ Consultores.
#
class router($ip, $gw) {
  package {'vim':
    ensure => present
  }
}