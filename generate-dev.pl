#!/usr/bin/perl -w 
use strict;
use warnings;
use Cwd 'getcwd';


=begin GHOSTCODE
As described on https://snarfed.org/my_stylish_userstyle_workflow :

	Create a userstyle named "Canvas Dark Dev" in Stylish, then copy/paste the following:

		@import "file:///<YOUR_PATH_HERE>/Stylish-Canvas-Dark/canvas-dark-stylish.css";
		@-moz-document url-prefix(http), url-prefix(file) {}
=end GHOSTCODE
=cut


my $filename = "canvas-dark-dev.css";
open(my $fh, ">", $filename) or die "Could not open file '$filename' $!";

my $path = getcwd();
print $fh '@import "file:///' . $path . '/canvas-dark-stylish.css";' . "\n";
print $fh '@-moz-document url-prefix(http), url-prefix(file) {}' . "\n";

close($fh);
