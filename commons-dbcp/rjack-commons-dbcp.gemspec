# -*- ruby -*-

gem 'rjack-tarpit', '~> 2.0'
require 'rjack-tarpit/spec'

RJack::TarPit.specify do |s|
  require 'rjack-commons-dbcp/base'

  s.version = RJack::CommonsDbcp::VERSION

  s.add_developer( 'David Kellum', 'dek-oss@gravitext.com' )

  s.depend 'rjack-commons-pool',    '~> 1.5.3'
  s.depend 'minitest',              '~> 2.2',       :dev

  s.assembly_version = '1.0'

  s.jars = [ "commons-dbcp-#{ RJack::CommonsDbcp::DBCP_VERSION }.jar" ]
end
