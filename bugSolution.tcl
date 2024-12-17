proc get_element {list index} {
  if {$index < 0 || $index >= [llength $list]} {
    return -code error "Index out of range"
  }
  return [lindex $list $index]
}

set mylist {a b c d e}
puts "[get_element $mylist 10]" 
#Error handling improved, returns an error code
proc get_element_safe {list index} {
    if {$index < 0 || $index >= [llength $list]} {
        return -code error "Index out of range"
    }
    return [lindex $list $index]
}
set mylist {a b c d e}
puts [catch {get_element_safe $mylist 3} result]
puts $result
puts [catch {get_element_safe $mylist 10} result]
puts $result