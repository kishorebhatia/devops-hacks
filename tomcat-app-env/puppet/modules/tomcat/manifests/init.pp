# == Class: tomcat
#
# Installs packages for tomcat, enables modules, and sets config files.
#

class tomcat {
 
  $tomcat_port = 735
  $tomcat_password = 'badwolf'
 
  notice("Establishing http://$hostname:$tomcat_port/")
 
  Package { # defaults
    ensure => installed,
  }
 
  package { 'tomcat6':
  }
 
  package { 'tomcat6-user':
    require => Package['tomcat6'],
  }
 
  package { 'tomcat6-admin':
    require => Package['tomcat6'],
  }
 
  service { 'tomcat6':
    ensure => running,
    require => Package['tomcat6'],
  }
 
}

define tomcat::deployment($path) {
 
  include tomcat
  notice("Establishing http://$hostname:${tomcat::tomcat_port}/$name/")
 
  file { "/var/lib/tomcat6/webapps/${name}.war":
    owner => 'root',
    source => $path,
  }
 
}