# Current status

## at-most-k branch
```
$ ./test.sh
0_1.tcl: (ret 0) regular case
0_2.tcl: (ret 0) at most k case
0_n.tcl: (ret 0) at most k case
1_2.tcl: (ret 1) crash
	> Running 1_2
	> p <-> Graph
	> At-most-k case
	> The multiplicity 1,2 is not implemented.
	>     while executing
	> "throw {V1E BDD NOTIMPLEMENTED} "The multiplicity [$c lower get],[$c upper get] is not implemented.""
	>     (procedure "init" line 220)
	>     ::nsf::__#9 ::djdsl::v1e::Model::BDDSystem->init
	>     ::djdsl::v1e::Model::BDDSystem ::nx::Class->new
	>     invoked from within
	> "[current class]::BDDSystem new -model [self]"
	>     (procedure "requireBDD" line 3)
	>     ::nsf::__#2 ::djdsl::v1e::Model->requireBDD
	>     invoked from within
	> ": -local requireBDD"
	>     (procedure "asDot" line 2)
	>     invoked from within
	> "$gpl asDot"
	>     invoked from within
	> "puts [$gpl asDot]"
	>     (file "1_2.tcl" line 16)
1_n.tcl: (ret 0) regular case
```

## master branch
```
$ ./test.sh

0_1.tcl: (ret 1) crash
	> Running 0_1
	> expression named "::nsf::__#8" not found
	>     while executing
	> "${:system} & ${:model} ${:model} $c"
	>     (procedure "init" line 96)
	>     ::nsf::__#9 ::djdsl::v1e::Model::BDDSystem->init
	>     ::djdsl::v1e::Model::BDDSystem ::nx::Class->new
	>     invoked from within
	> "[current class]::BDDSystem new -model [self]"
	>     (procedure "requireBDD" line 3)
	>     ::nsf::__#2 ::djdsl::v1e::Model->requireBDD
	>     invoked from within
	> ": -local requireBDD"
	>     (procedure "asDot" line 2)
	>     invoked from within
	> "$gpl asDot"
	>     invoked from within
	> "puts [$gpl asDot]"
	>     (file "0_1.tcl" line 16)
0_2.tcl: (ret 1) crash
	> Running 0_2
	> The multiplicity 0,2 is not implemented.
	>     while executing
	> "throw {V1E BDD NOTIMPLEMENTED} "The multiplicity [$c lower get],[$c upper get] is not implemented.""
	>     (procedure "init" line 93)
	>     ::nsf::__#9 ::djdsl::v1e::Model::BDDSystem->init
	>     ::djdsl::v1e::Model::BDDSystem ::nx::Class->new
	>     invoked from within
	> "[current class]::BDDSystem new -model [self]"
	>     (procedure "requireBDD" line 3)
	>     ::nsf::__#2 ::djdsl::v1e::Model->requireBDD
	>     invoked from within
	> ": -local requireBDD"
	>     (procedure "asDot" line 2)
	>     invoked from within
	> "$gpl asDot"
	>     invoked from within
	> "puts [$gpl asDot]"
	>     (file "0_2.tcl" line 16)
0_n.tcl: (ret 1) crash
	> Running 0_n
	> The multiplicity 0,3 is not implemented.
	>     while executing
	> "throw {V1E BDD NOTIMPLEMENTED} "The multiplicity [$c lower get],[$c upper get] is not implemented.""
	>     (procedure "init" line 93)
	>     ::nsf::__#9 ::djdsl::v1e::Model::BDDSystem->init
	>     ::djdsl::v1e::Model::BDDSystem ::nx::Class->new
	>     invoked from within
	> "[current class]::BDDSystem new -model [self]"
	>     (procedure "requireBDD" line 3)
	>     ::nsf::__#2 ::djdsl::v1e::Model->requireBDD
	>     invoked from within
	> ": -local requireBDD"
	>     (procedure "asDot" line 2)
	>     invoked from within
	> "$gpl asDot"
	>     invoked from within
	> "puts [$gpl asDot]"
	>     (file "0_n.tcl" line 16)
1_2.tcl: (ret 1) crash
	> Running 1_2
	> The multiplicity 1,2 is not implemented.
	>     while executing
	> "throw {V1E BDD NOTIMPLEMENTED} "The multiplicity [$c lower get],[$c upper get] is not implemented.""
	>     (procedure "init" line 93)
	>     ::nsf::__#9 ::djdsl::v1e::Model::BDDSystem->init
	>     ::djdsl::v1e::Model::BDDSystem ::nx::Class->new
	>     invoked from within
	> "[current class]::BDDSystem new -model [self]"
	>     (procedure "requireBDD" line 3)
	>     ::nsf::__#2 ::djdsl::v1e::Model->requireBDD
	>     invoked from within
	> ": -local requireBDD"
	>     (procedure "asDot" line 2)
	>     invoked from within
	> "$gpl asDot"
	>     invoked from within
	> "puts [$gpl asDot]"
	>     (file "1_2.tcl" line 16)
1_n.tcl: (ret 0) regular case
```