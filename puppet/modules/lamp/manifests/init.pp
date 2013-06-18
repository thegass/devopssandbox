class lamp{
	class {'apache':}
	class {'apache::mod::php': }
	
	class{'mysql':}
	
	class { 'mysql::server':
	  config_hash => { 'root_password' => 'toor' }
	}
		
	class { 'mysql::php':}
	

	package {
		"php-cli":
			ensure => present,
			require => Package["php"],
	}
	package {
		"php-gd":
			ensure => present,
			require => Package["php"],
	}
	package {
		"php-soap":
			ensure => present,
			require => Package["php"],
	}
	package {
		"php-mcrypt":
			ensure => present,
			require => Package["php"],
	}
	package {
		"php-pear":
			ensure => present,
			require => Package["php"],
	}

	package {
		"php-xcache":
			ensure => present,
			require => Package["php"],
	}
	package {
		"php-xml":
			ensure => present,
			require => Package["php"],
	}

}