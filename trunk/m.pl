#!/usr/bin/perl
#
# script for building CLIPS program from Protoge export
# @author deric 

open OUT, ">h" or die $!;

print OUT ";############### program ##################\n";

$data_file="clips";
open(FILE, $data_file) || die("Could not open file $data_file!");
@i=0;
while (<FILE>) {
  print OUT $_;
  $i++;
}
close FILE;

print OUT "\n;############### ontology ##################\n";

$pont="export/housing.pont";
open(FILE, $pont) || die("Could not open file $pont!");
while (<FILE>) {
  print OUT $_;
  $i++;
}
close FILE;
print OUT "\n\n
;############### instances ##################
(definstances inst \n";

$inst="export/instances.pins";
open(FILE, $inst) || die("Could not open file $inst!");
while (<FILE>) {
  print OUT $_;
  $i++;
}
close FILE;
print OUT ")";

close OUT;

print "housing build completed. $i lines\n";
