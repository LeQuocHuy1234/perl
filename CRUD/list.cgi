#! D:\xampp\perl\bin\perl.exe
use CGI;
use DBI;
$cgi = new CGI;

my $dbh = DBI->connect("DBI:mysql:perltest",'root','');

my $sqlDatabase = $dbh->prepare("SELECT * FROM users") or die "Execution Fail: $dbh->errstr()";

$sqlDatabase->execute() or die "Execution failed: $dbh->errstr()";

print $cgi->header(),
      $cgi->start_html("Database"),
      $cgi->table({-border=>1}),
      $cgi->Tr($cgi->th([" name"," address", "action"]));

print "<a href='./create.cgi'>Create User</a>";

while(my $row = $sqlDatabase->fetchrow_hashref) {
  print $cgi->Tr($cgi->td([$row->{name}, $row->{address}, "<a href='./update.cgi?id=$row->{id}'>Update</a>"."/"."<a href='./delete.cgi?id=$row->{id}'>Delete</a>"]));
}
print $cgi->end_table();

print $cgi->end_html();


exit;