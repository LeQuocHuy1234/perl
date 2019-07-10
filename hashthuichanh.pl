use Data::Dumper;

%player = ('mot' => "Huy", 'hai' => "Hoang", 'ba' => "Doanh");
print "nguoi choi: $player{'mot'}";

#foreach
foreach $key (keys %player) {
    print "\n key la $key :$player{$key}";
}
#while 
while (($key, $value) = each (%player))
{
  $value = $player{$key};
  print "  $key costs $value\n";
}

@keyPlayer = keys %player;
print "\n Key cua mang: @keyPlayer";
@valuePlayer = values %player;
print "\n Value cua mang: @valuePlayer";
#check ton tai
if (exists($player{'mot'})) {
    print "\n Ton tai";
} else {
    print "\n Ko ton tai";
}
#size
$size = @keyPlayer;
$player{'bon'} = 'Hien';

print "\nThe size of the hash is: $size\n";

delete $player{'bon'};

print Dumper(\%player);

