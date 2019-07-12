#! D:\xampp\perl\bin\perl.exe
use CGI;
use DBI;
use Data::Dumper;

my $cgi = new CGI;

if ($cgi->param('id')) {
    my $id = $cgi->param('id');
    my $dbh = DBI->connect("DBI:mysql:perltest",'root','');

    $sqlDatabase = $dbh->prepare("SELECT * FROM users WHERE id=$id") or die "Execution Fail: $dbh->errstr()";
    $sqlDatabase->execute() or die "Execution failed: $dbh->errstr()";
}

print $cgi->header(),
        $cgi->start_html("Database"),
        $cgi->center("Them moi");
print $cgi->start_form(
        -method => 'GET',
        -action => '',
);

print $cgi->p("\n Name: \n");
while(my $row = $sqlDatabase->fetchrow_hashref) {

    print $cgi->hidden(
            -name => 'id',
            -values => $row->{id}
    );

    print $cgi->textfield(
            -name => 'name',
            -values => $row->{name}
    );

    print $cgi->p("\n Address: \n");

    print $cgi->textfield(
            -name => 'address',
            -values => $row->{address}
    );

}
print $cgi->p("\n");

print $cgi->submit(-value => 'submit');

print $cgi->p("\n");

print $cgi->end_form;

print $cgi->end_html();

if ($cgi->param('name') && $cgi->param('address')) {
    my $name = $cgi->param('name');
    my $address = $cgi->param('address');
    my $id = $cgi->param('id');
    my $dbh = DBI->connect("DBI:mysql:perltest",'root','');
    my $sqlDatabase = $dbh->prepare("UPDATE users SET name='$name', address='$address' WHERE id = $id") or die print "Execution Fail: $dbh->errstr()";

    $sqlDatabase->execute() or die "Execution failed: $dbh->errstr()";

        
    my $url="http://localhost/Perl/CRUD/list.cgi";
    my $t=1;
    print "<META HTTP-EQUIV=refresh CONTENT=\"$t;URL=$url\">\n";
}
exit;