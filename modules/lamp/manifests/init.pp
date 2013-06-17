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
		"php-mysql":
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