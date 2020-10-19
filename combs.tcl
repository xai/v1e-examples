proc combk {{in} {k}} {
	if {$k == 0} {
		return [list {}]
	} elseif {[llength $in] < $k} {
		return {}
	} elseif {[llength $in] == $k} {
		return [list $in]
	}

	set short_in [lassign $in x]

	set out [combk $short_in $k]

	set c [combk $short_in [expr $k - 1]]
	foreach y $c {
		lappend out [concat $x $y]
	}

	return $out
}

set cands {A B C D E F}
set combinations [combk $cands 3]
puts $combinations
puts [llength $combinations]

