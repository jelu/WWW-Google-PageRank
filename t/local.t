#!perl -w

use WWW::Google::PageRank;

my @pattern =
  (
   'http://www.yahoo.com/' => 2318164100,
   'http://search.cpan.org/src/YKAR/Google-PageRank-0.01/lib/Google/PageRank.pm' => 1637849541,
   'http://dmoz.org/Computers/Programming/Languages/Perl/Modules/' => 2485447394,
   'http://www.perlmonks.org/' => 933066044,
   'http://perl.apache.org/docs/1.0/guide/config.html#Stacked_Handlers' => 3320044670,
   'http://perl.apache.org/products/products.html' => 3879192241,
   'http://www.hotbot.com/' => 2583579011,
   'http://slashdot.org/' => 1762383014
  );

print ('1..' . (scalar(@pattern) / 2) . "\n");

my $test_nr = 1;

while (@pattern) {
  my $url = shift @pattern;
  my $vch = shift @pattern;
  my $ch = WWW::Google::PageRank::_compute_ch($url);
  print (($ch == $vch ? "ok" : "not ok") . " $test_nr\n");
  $test_nr ++;
}
