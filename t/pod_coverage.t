use Mojo::Base -strict;

use Test::More;

plan skip_all => 'set TEST_POD to enable this test (developer only!)'
  unless $ENV{TEST_POD};
plan skip_all => 'Test::Pod::Coverage 1.04 required for this test!'
  unless eval 'use Test::Pod::Coverage 1.04; 1';

# DEPRECATED in Top Hat!
my @tophat = (
  qw(app app_url detect_proxy http_proxy https_proxy name need_proxy new),
  qw(no_proxy secret to_rel)
);

# False positive constants
all_pod_coverage_ok({also_private => [qw(IPV6 TLS), @tophat]});
