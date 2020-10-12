source /home/xai/src/djdsl/v1e/library/v1e.tcl

package require djdsl::v1e
namespace import ::djdsl::v1e::*

set gpl [Model newFromScript {
  Root "Graph" {
    Choice -lower 0 -upper 2 {
      Feature -name "coloured"
      Feature -name "weighted"
      Feature -name "directed"
    }
  }
}]

puts [$gpl asDot]
