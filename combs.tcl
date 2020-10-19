proc combk {{in} {k}} {
	if {$k == 0 || [llength $in] < $k} {
		return ""
	} elseif {[llength $in] == $k} {
		return $in
	}

	set out { }
	set short_in [lassign $in x]

	if {$k == 1} {
		lappend out $x
	}

	lappend out [combk $short_in $k]

	set c [combk $short_in [expr $k - 1]]
	foreach y $c {
		lappend out [concat $x $y]
	}

	return $out
}

set cands {A B C D}
set combinations [list [combk $cands 3]]
puts $combinations

