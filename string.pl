my $s= q/"Are you learning Perl String today?" We asked./;
print($s ,"\n");
 
my $name = 'Jack';
my $s2 = qq/"Are you learning Perl String today?"$name asked./;
print($s2 ,"\n");

my $s = q^A   string with different delimiter ^;
print($s,"\n");
# dem chuoi ky tu
print(length($s), "\n");

# viet thuong va viet hoa
my $s = "Change cases of a string\n";
print("To upper case:\n");
print(uc($s),"\n");
 
print("To lower case:\n");
print(lc($s),"\n");

#Tim kiem chuoi

my $s = "Learning Perl is easy\n";
my $sub = "Perl";
my $p = index($s, 'Perl');
print(qq\The substring "$sub" found at position "$p" in string "$s"\,"\n");

# trich xuat hoac sua chuoi

my $s = "Green is my favorite color";
my $color  = substr($s, 0, 5);      # Green
my $end    = substr($s, -5);        # color
 
print($end,":",$color,"\n");
 
# replace substring
substr($s, 0, 5, "Red"); #Red is my favorite color
print($s,"\n");

#oct
print ("sss");
print (oct("22"));