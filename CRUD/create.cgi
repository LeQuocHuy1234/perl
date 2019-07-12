#! D:\xampp\perl\bin\perl.exe
use CGI;
use DBI;
use CGI qw(:standard);

my $cgi = new CGI;
print $cgi->header(),
        $cgi->start_html("Database"),
        $cgi->center("Them moi");
print $cgi->start_form(
        -method => 'GET',
        -action => '',
);

print $cgi->p("\n Name: \n");

print $cgi->textfield(
        -name => 'name'
);

print $cgi->p("\n Address: \n");

print $cgi->textfield(
        -name => 'address'
);

print $cgi->p("\n");

print $cgi->submit(-value => 'Submit');

print $cgi->p("\n");

print $cgi->end_form;

print $cgi->end_html();

if ($cgi->param('name') && $cgi->param('address')) {
        my $name = $cgi->param('name');
        my $address = $cgi->param('address');
        my $dbh = DBI->connect("DBI:mysql:perltest",'root','');
        my $sqlDatabase = $dbh->prepare("INSERT INTO users(name,address) VALUES ('$name','$address')") or die print "Execution Fail: $dbh->errstr()";

        $sqlDatabase->execute() or die "Execution failed: $dbh->errstr()";

        my $url="http://localhost/Perl/CRUD/list.cgi";
        my $t=1;
        print "<META HTTP-EQUIV=refresh CONTENT=\"$t;URL=$url\">\n";
}
exit;