#!/usr/bin/perl

use strict;
use warnings;

# Find => Replace
my %data = (
	"/*[[canvas_domain]]*/"         => "canvas.sfu.ca"
);

open(my $in, '<', 'canvas-dark-userstyles.css') or die "Could not open file '$_' $!";
open(my $out, '>', 'canvas-dark-stylish.css') or die "Could not open file '$_' $!";

while (my $line = readline($in))
{
	foreach (keys %data)
	{
		$line =~ s/\Q$_/$data{$_}/g;
	}

	print $out $line;
}

close($out);
