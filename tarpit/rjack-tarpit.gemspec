# -*- ruby -*- encoding: utf-8 -*-

$LOAD_PATH.unshift( File.join( File.dirname( __FILE__ ), 'lib' ) )
require 'rjack-tarpit/spec'

RJack::TarPit.specify do |s|
  s.name     = 'rjack-tarpit'
  s.version  = RJack::TarPit::VERSION
  s.homepage = 'http://rjack.rubyforge.org/tarpit'

  s.add_developer( 'David Kellum', 'dek-oss@gravitext.com' )

  s.summary = 'Glue for Maven in Rake.'

  s.description = <<-DESC
    Runs mvn package/install and links jars as needed to gem lib directory.
    Provides related utilities.
  DESC

  # s.platform = :java

  s.depend 'rake',            '~> 0.9.2'
  s.depend 'rdoc',            '~> 3.6'
  s.depend 'minitest',        '~> 2.3',       :dev

end