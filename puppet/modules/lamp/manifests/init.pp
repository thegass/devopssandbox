class lamp{
	package {
		"httpd":
			ensure => present
	}
	package {
		"php":
			ensure => present,
			require => Package["httpd"],
	}
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
		"php-mysql":
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
	package {
		"mysql-server":
			ensure => present
	}
	service {
		"httpd":
			ensure => true,
			enable => true,
			require => Package["httpd"],
	}
	service {
		"mysqld":
			ensure => true,
			enable => true,
			require => Package["mysql-server"],
	}
}