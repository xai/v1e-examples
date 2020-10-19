proc combk {{in} {k}} {
	puts "Computing $k-combinations in $in:"
	if {$k == 0} {
		puts "$k-combinations in $in: none"
		return ""
	} elseif {[llength $in] < $k} {
		puts "$k-combinations in $in: none"
		return ""
	} elseif {[llength $in] == $k} {
		puts "$k-combinations in $in: $in"
		return $in
	}

	set out { }
	set short_in [lassign $in x]
	puts "  x := $x"

	if {$k == 1} {
		lappend out $x
	}

	puts "  list without $x: $short_in"
	lappend out [combk $short_in $k]

	puts "  $k-combinations in $in without $x: $out"
	set c [combk $short_in [expr $k - 1]]
	puts "  ($k -1)-combinations in $in without $x: $c"
	foreach y $c {
		puts "  Appending $x to $y..."
		set xy [concat $x $y]
		puts "	xy: $xy"
		lappend out $xy
		puts "	out is currently: $out"
	}

	puts "Returning $k-combinations in $in: $out"
	return $out
}

set cands {A B C D}
set combinations [combk $cands 3]
#puts $combinations
