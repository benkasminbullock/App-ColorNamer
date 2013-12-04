use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'App::ColorNamer',
    license             => 'perl',
    dist_author         => q{Zoffix Znet <zoffix@cpan.org>},
    dist_version_from   => 'lib/App/ColorNamer.pm',
    configure_requires => { 'Module::Build' => 0 },
    build_requires => {
        'Test::More' => 0,
    },
    requires => {
        'Convert::Color'        => 0.07,
        'Class::Data::Accessor' => 0.04004,
        perl                    => '5.006',
    },
    add_to_cleanup      => [ 'App-ColorNamer-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
