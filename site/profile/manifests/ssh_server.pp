class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDOEG8EPukSiMNiGWruVpLm0QQEXCxhy97awoPhRqVmlY151lJpK+S7PKIjJIaHunGz1Xi4Z/ZnTvHhyEBrl8ChkeSoG45W9a0TnHZ81wOd5cJmAkTQBk1zro4apIUfYp+1XzuCivDPDv8S47J8QaPy+/qlSaBVoba08ezLFk2UOwGS7Q0jiG/+WyYR8iM7U+OtcrNGwuIT5V4l+aMKpo3euSHgKpGd6uJyc00K8AX8ulebK/r8YP3UNXaGPB3vACgMpO7QuSro7soAuRK48Wsj+h8yAiKDcfTy9ZUJkNYApAKmpGd8NLsYVZQ3OxmyYV5IvdpSF/jZJX8QnhFbsP7Z',
	}  
}
