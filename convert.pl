sub convert {
    $myInput = $_[0];
    if ($myInput =~ m/^([-+]?[0-9]+)([CF])$/) {
        $InputNum = $1;
        $type = $2;
        if ($type eq "C") {
            $celsius = $InputNum;
            $fahrenheit = ($celsius * 9 / 5) + 32;
        } else {
            $fahrenheit = $InputNum;
            $celsius = ($fahrenheit - 32) * 5 / 9;
        }
        printf "%.2f C is %.2f F\n", $celsius, $fahrenheit;
    } else {
        printf "Expecting a number followed by \"C\" or \"F\", \n";
        printf "so I don't understand \"$myInput\".\n";
    }
}
print "Enter a tempreature (e.g., 32F, 100C):\n";
$input = <STDIN>;
chomp($input);
convert($input);