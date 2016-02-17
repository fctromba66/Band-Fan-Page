#/perl/bin/perl
use strict;
use warnings;
use CGI;

my $cgi = CGI->new();

print
	$cgi->header('text/html'),
	$cgi->start_html('Fanclub Signup'),
	$cgi->h1('You are now signed up.'),
	$cgi->p('Thank you for signing up,' ,
	$cgi->strong($cgi->param('name')), '.'),
	$cgi->p('The following comment has been submitted:'),
	$cgi->blockquote($cgi->param('comments')),
	$cgi->end_html;