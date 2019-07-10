#mang
my @array = ('red', 'blue', 'green');
print "@array \n";
#tao mang bang qw
print(qw(red green blue));
#truy cao phan tu mang
print "\n";
my @days = qw(Mon Tue Wed Thu Fri Sat Sun);
print("Mang dau $days[0] \n");
print("Mang cuoi $days[-1] \n"); 
print(@days[-2..-1]."\n");
#dem mang
print ("Tong phan tu trong mang".scalar(@days) . "\n");
#tra chi so cao nhat mang
my $last = $#days;
print($last, "\n");
#SUA DOI MANG
my @stack = (); # empty array
 
print("push 1 to array\n");
 
push(@stack,1);
 
print("push 2 to array\n");
push(@stack,2);
 
print("push 3 to array\n");
push(@stack,3);


my $elem = pop(@stack);
print("element: $elem\n");
 
$elem = pop(@stack);
print("element: $elem\n");
 
$elem = pop(@stack);
print("element: $elem\n");

#sap xep mang
my @fruits = qw(oranges apples mango cucumber);
my @sorted = sort @fruits;
 
print("@sorted","\n");

# tao mang de mang cu luon vc !!!
@array  = ( 1, 2, 3, 4);

print "Value of array is @array\n" ;

unshift( @array, 20, 30, 40 );

# xoa phan tu dau mang
shift(@array);
print "Now value of array is @array\n" ;

# tao mang cho key va value
my %langs = ( England => 'English',
 France => 'French', 
 Spain => 'Spanish', 
 China => 'Chinese', 
 Germany => 'German');
# get language of England
my $lang = $langs{'England'}; # English
print($lang,"\n");

#tao them mang or xoa
$langs{'Italy'} = 'Italian';
delete $langs{'China'};
#tra ve key
for (keys %langs) {
    print ("key la $langs{$_}")
}

#thay the phan tu trong mang
@nums = (1..20);
print "Before - @nums\n";

splice(@nums, 5, 5, 21..25); 
print "After - @nums\n";

#tach chuoi thanh mang
$var_string = "Rain-Drops-On-Roses-And-Whiskers-On-Kittens";
$var_names = "Larry,David,Roger,Ken,Michael,Tom";

# transform above strings into arrays.
@string = split('-', $var_string);
@names  = split(',', $var_names);

# tach mang thanh chuoi 
$string1 = join( '-', @string );
$string2 = join( ',', @names );

print "$string1\n";
print "$string2\n";

# ton tai
%data = ('John Paul' => 45, 'Lisa' => 30, 'Kumar' => 40);

if( exists($data{'Lisa'} ) ) { # exists tồn tại
   print "Lisa is $data{'Lisa'} years old\n";
} else {
   print "I don't know age of Lisa\n";
}