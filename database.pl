use strict;
use warnings;
use DBI;
use utf8;
use Encode;
use Data::Dumper;

my $dbh = DBI->connect("DBI:mysql:perltest",'root','');

my $sqlDatabase = $dbh->prepare("SELECT * FROM users") or die "Execution Fail: $dbh->errstr()";

$sqlDatabase->execute() or die "Execution failed: $dbh->errstr()";



while(my $row = $sqlDatabase->fetchrow_hashref) {
    print "$row->{name}";
}

$sqlDatabase->finish();
$dbh->disconnect();