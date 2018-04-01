#!/usr/bin/perl

use strict;
use LWP::Simple;
use XML::Simple;
use CGI;
use utf8;

my $q = new CGI;
my $city = $q->param('city');
my $url = "http://weather.livedoor.com/forecast/webservice/rest/v1?city=${city}&day=tomorrow";
my $xml = get($url);
my $data = XMLin($xml);

print "Content-type: text/html; charset=utf-8\n\n";
print "\xef\xbb\xbf";
binmode(STDOUT, ":utf8");
print "<p>" . $data->{location}->{city} . "の明日の天気<br />\n";
print $data->{telop} . "<br />\n";
print "<img src=\"" . $data->{image}->{url} . "\" width=\"" . $data->{image}->{width} . "\" height=\"" . $data->{image}->{height} . "\" alt=\"" . $data->{image}->{title} . "\" /><br />\n";
print $data->{description} . "<br />\n";
if (ref $data->{temperature}->{min}->{celsius} eq 'HASH') {
    print "最低気温：データがありません<br />\n";
}
else {
    print "最低気温：" . $data->{temperature}->{min}->{celsius} . "度<br />\n";
}
if (ref $data->{temperature}->{max}->{celsius} eq 'HASH') {
    print "最高気温：データがありません<br />\n";
}
else {
    print "最高気温：" . $data->{temperature}->{max}->{celsius} . "度<br />\n";
}
print "</p>";

1;
