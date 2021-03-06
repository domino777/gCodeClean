#!/usr/bin/perl
#gClean.pl
#
#
#  "Copyright 2013 Mauro Ghedin"
#
#  This program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 3 of the License, or
#  or any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software
#  Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
#  MA 02110-1301, USA.
#
#
#       @author         : Mauro Ghedin
#       @contact        : domyno88 at gmail dot com
#       @version        : 0.1
#
#


use warnings;
use strict;

use lib::ARG;


my @cmdArg		= getArgv(@ARGV);

open( my $opnHNDL, "<", $cmdArg[ scalar @cmdArg - 2 ] ) or die "Unable open file: ".$cmdArg[ scalar @cmdArg - 2 ]."\n";
open( my $crtHNDL, ">", $cmdArg[ scalar @cmdArg - 1 ] ) or die "Unable create file: ".$cmdArg[ scalar @cmdArg - 1 ]."\n";

while (<$opnHNDL>) {
	print $crtHNDL $_ if ( $_ !~ m/^\(|^M73/ );
}

close $opnHNDL;
close $crtHNDL;
