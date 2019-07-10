$x = "1";
$y = "2";
$z = "3";
# So sanh chu
# nho hon <
if ($x lt $y) {
    print "$x nho hon $y"
}
# lon hon
if ($z gt $x) {
    print "$z lon hon $x";
}
# lon hon or bang
if ($z ge $x) {
    print "$z lon hon or bang $x";
}
# nho hon or bang
if ($x le $y) {
    print "$z nho hon or bang $x";
}
# bang
if ($x eq $y) {
    print "$z bang $x";
}
# khong bang
if ($x ne $y) {
    print "$z khong bang $x";
}

$x = 90;
$y = 75;

$and_op=$x&$y;
print $and_op;

#funtion
sub area
{
    $side = $_[0];
    print ("\n",$side*3, "\n");
}

area(3);

sub Average {
   # get total number of arguments passed.
   $n = scalar(@_);
   $sum = 0;

   foreach $item (@_) {
      $sum += $item;
   }
   $average = $sum / $n;

   print "Average for the given numbers : $average\n";
}

# Function call
Average(10, 20, 30);