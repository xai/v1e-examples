package require djdsl::v1e
namespace import ::djdsl::v1e::*

set gpl [Model newFromScript {
  #// gpl1 //
  Root "Graph" {
    Choice -lower 0 -upper 1 {
      Feature -name "coloured"
    }
    Choice -lower 0 -upper 1 {
      Feature -name "weighted"
    }
  }
  #// end //
}]

#foreach c [$gpl getOwnedElements] {
	#puts [$c]
#}

puts [$gpl asDot]
