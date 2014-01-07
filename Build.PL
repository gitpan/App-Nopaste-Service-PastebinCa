use 5.006;
use strict;
use warnings FATAL => 'all';
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'App::Nopaste::Service::PastebinCa',
    license             => 'Artistic_2_0',
    dist_author         => q{Zoffix Znet <zoffix@cpan.org>},
    dist_version_from   => 'lib/App/Nopaste/Service/PastebinCa.pm',
    release_status      => 'stable',
    configure_requires => {
        'Module::Build' => 0,
    },
    build_requires => {
        'Test::More' => 0,
    },
    requires => {
        'App::Nopaste::Service'             => 0,
        'WWW::Pastebin::PastebinCa::Create' => 0.004,
        'perl'                              => '5.006',
    },
    add_to_cleanup     => [ 'App-Nopaste-Service-PastebinCa-*' ],
    create_makefile_pl => 'traditional',
);
if ( $ENV{RELEASE_TESTING} ) {
    system('pod2text lib/App/Nopaste/Service/PastebinCa.pm > README');
}

$builder->create_build_script();
