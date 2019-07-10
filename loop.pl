# for
my @a = (1..9);
for (@a) {
    print("su dung for $_", "\n");
}

print "gan bien";
for my $i (@a) {
    print ("$i", "\n")
}

#foreach
foreach(@a){
 print("su dung foreach $_","\n");
}

#thao tac vs loop
foreach (@a) {
    $_ = $_ * 2;
}
print "Sua : @a \n";

foreach my $a (@a) {
    $a = $a * 3;
}
print "Sua : @a \n";

#Tim kiem theo kieu grep 
%fruit = (
    'apple' => 'green',
    'kiwi' => 'yellow'
);

print "\n";
print %fruit;

my @all = grep { $_ eq green } %fruit;
print @all