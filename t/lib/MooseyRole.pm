use strict;
use warnings;
package MooseyRole;

use Moose::Role;
use Scalar::Util 'reftype';
use namespace::clean;

sub role_stuff {}

use constant CAN => [ qw(role_stuff) ];
use constant CANT => [ qw(reftype reftype with meta) ];

1;
