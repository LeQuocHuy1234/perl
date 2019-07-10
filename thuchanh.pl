@rank = (1, 'hai', 3);

print "@rank\n";

@lenght = scalar(@rank);
@tong = @rank;

print "Tong so phan tu @tong\n";

push (@rank, "bon");

print "@rank \n";

unshift(@rank, "dau");

print "@rank \n";

pop(@rank);

print "@rank \n";

shift(@rank);

print "@rank \n";

@winder = @rank[0, 1];

print ("@winder", "\n");

#chen phan tu

@actors = ('mot', "hai", "ba", "bon");

print "@actors\n";

splice(@actors, 1, 2, "chen1", "chen2");

print "@actors\n";










@instrucments = ('le', 'quoc', 'huy');

$my_string = join("--", @instrucments);

print "$my_string\n";

@arr = split("--",$my_string);

print "Text : @arr\n";



# sap xep va merge 2 mang

@string_arr = ('One', 'Two', 'Three', 'Four');

@string_arr = sort(@string_arr);

print "Sap xep: @string_arr";

#gop 2 mang

@arr1 = (1..3);
@arr2 = (4..6);

@arrMerge = (@arr1, @arr2);

print "\n@arrMerge\n";