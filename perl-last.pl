my ($key, $value);
 
my %h = ("apple" => 1,
 "orange" => 2,
 "mango" => 3,
 "coconut" => 4);
 
print("Please enter a key to search:\n");
$key = <STDIN>;
 
chomp($key);
 
$value = 0;
 
# searching
foreach(keys %h){
    if($_ eq $key){ # eq la de so danh chuoi
       $value = $h{$_};
       last;  # stop searching if found
    }
}
 
# print the result
if($value > 0){
   print("element $key found with value: $value\n");
}else{
   print("element $key not found\n");
}