# swift4_code
coding method to swift language
// Example JSON with array root:
/*
	[
		"hello", 3, true
	]
*/
if let array = jsonWithArrayRoot as? [Any] {
	if let firstObject = array.first {
		// access individual object in array
	}

	for object in array {
		// access all objects in array
	}

	for case let string as String in array {
		// access only string values in array
	}
}
