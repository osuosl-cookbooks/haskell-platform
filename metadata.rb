name             'haskell-platform'
maintainer       'Oregon State University'
maintainer_email 'systems@osuosl.org'
license          'Apache 2.0'
description      'Installs/Configures haskell-platform'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.5'

%w{centos redhat ubuntu debian}.each do |os|
supports os
end

depends          'apt'
depends          'yum'
depends          'yum-epel'

supports         'centos', '~> 6.0'
supports         'ubuntu', '12.04'
