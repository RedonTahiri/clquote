my @array = ();
my $current_string = '';

while (<STDIN>) {
  chomp;
  if ($_ =~ /^--/) {
    push(@array, "$current_string$_\n");
    $current_string = '';
  } elsif ($_ ne "") {
    $current_string = "$current_string$_\n";
  }
}

print $array[rand @array];
