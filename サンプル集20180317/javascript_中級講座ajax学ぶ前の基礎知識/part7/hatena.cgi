#!/usr/bin/perl

use strict;
use LWP::Simple;
use CGI;

my $q = new CGI;
my $url = $q->param('url');
my $query_url = "http://b.hatena.ne.jp/entry/json/${url}";
my $json = get($query_url);

print "Content-type: application/json; charset=utf-8\n\n";
print "\xef\xbb\xbf";
print $json;

1;
