#!/usr/bin/perl

use strict;
use LWP::Simple;
use CGI;

my $appid = "your_app_id";
my $q = new CGI;
my $query = &url_encode($q->param('query'));
my $site = $q->param('site');
my $url = "http://api.search.yahoo.co.jp/WebSearchService/V1/webSearch?appid=${appid}&query=${query}&results=50";
if ($site) {
    $url .= "&site=${site}" 
}
my $xml = get($url);

print "Content-type: text/xml; charset=utf-8\n\n";
print "\xef\xbb\xbf";
print $xml;

sub url_encode {
    my $str = shift;
    $str =~ s!([^a-zA-Z0-9_.~-])!uc sprintf "%%%02x", ord($1)!eg;
    $str;
}

1;
