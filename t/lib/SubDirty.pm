use strict;
use warnings;
package SubDirty;

use SubExporterModule qw/stuff/;

sub method { }

sub callstuff { stuff(); 'called stuff' }

use constant CAN => [ qw(stuff method callstuff) ];
use constant CANT => [ ];

1;
