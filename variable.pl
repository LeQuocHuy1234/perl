use warnings;
# use strict;

$a = 10;
print "$a\n";
# noi chuoi
$color = 'noi';
print "Cach 1: Bien duoc " . $color . "o day\n";
print "Cach 2: Bien duoc $color o day \n";
# bien cuc bo va bien toan cuc
$data = 'toan cuc';

print "Day la bien " . $data . "\n";
{
    my $data = 'cuc bo';
    print "Day la bien " . $data . "\n";
}

print "Day la bien " . $data ."\n";

