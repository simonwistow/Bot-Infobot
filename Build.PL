use strict;
use Module::Build;

my $build = Module::Build
  ->new( module_name   => "Bot::Infobot",
         license       => 'perl',
         dist_version  => '0.8',
         requires      => {
                          'Test::More'                     => 0,
                          'DBI'                            => 0,
                          'Config::Tiny'                   => 0,
                          'Bot::BasicBot::Pluggable'       => 0,
                          'Bot::BasicBot::Pluggable::Module::Fun'         => 0,
                          'Bot::BasicBot::Pluggable::Module::Weather'     => 0,
                          'Bot::BasicBot::Pluggable::Module::Tools'       => 0,
                          'Bot::BasicBot::Pluggable::Module::Search'      => 0,
                          'Bot::BasicBot::Pluggable::Module::Network'     => 0,
                        },
   	     scripts     => [ 'bin/infobot', 'bin/infobot-import' ],
         create_makefile_pl => 'traditional',
       );

$build->create_build_script;

