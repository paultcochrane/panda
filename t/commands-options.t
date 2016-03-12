use v6;

use Test;
use lib 'lib';

plan 2;

use-ok "Panda";
use Panda;
use Panda::App;

subtest {
    plan 2;

    my $panda = Panda.new(:ecosystem(make-default-ecosystem()));
    can-ok($panda, 'version');

    ok $panda.version, "version returns at least *something*";
}, "--version gives version info";

# vim: expandtab shiftwidth=4 ft=perl6
