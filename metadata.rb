name 'beam-me-up'
maintainer 'The Authors'
maintainer_email 'you@example.com'
license 'All Rights Reserved'
description 'Installs/Configures beam-me-up'
long_description 'Installs/Configures beam-me-up'
version '0.5.0'
chef_version '>= 12.1' if respond_to?(:chef_version)
issues_url 'https://github.com/z0c/beam-me-up/issues'
source_url 'https://github.com/z0c/beam-me-up'

depends 'cloudcli'
depends 'heroku-toolbelt'
depends 'pathogen'
depends 'rvm'
depends 'terraform'
