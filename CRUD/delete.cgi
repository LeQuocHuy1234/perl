#! D:\xampp\perl\bin\perl.exe
use CGI;
use DBI;
$cgi = new CGI;

my $dbh = DBI->connect("DBI:mysql:perltest",'root','');

my $sqlDatabase = $dbh->prepare("SELECT * FROM users") or die "Execution Fail: $dbh->errstr()";

$sqlDatabase->execute() or die "Execution failed: $dbh->errstr()";

print $cgi->header(),
      $cgi->start_html();

print $cgi->end_html();

if ($cgi->param('id')) {
        my $id = $cgi->param('id');
        my $dbh = DBI->connect("DBI:mysql:perltest",'root','');
        my $sqlDatabase = $dbh->prepare("DELETE FROM users WHERE id=$id") or die print "Execution Fail: $dbh->errstr()";

        $sqlDatabase->execute() or die "Execution failed: $dbh->errstr()";

        my $url="http://localhost/Perl/CRUD/list.cgi";
        my $t=1;
        print "<META HTTP-EQUIV=refresh CONTENT=\"$t;URL=$url\">\n";
}

exit;