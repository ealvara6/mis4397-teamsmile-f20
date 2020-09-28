formatter = "%{first} %{second} %{third} %{fourth}"

puts formatter % {first: 1, second: 2, third: 3, fourth: 4} # 1 2 3 4
puts formatter % {first: "one", second: "two", third: "three", fourth: "four"} # one two three four 
puts formatter % {first: true, second: false, third: true, fourth: false} # true false true false
puts formatter % {first: formatter, second: formatter, third: formatter, fourth: formatter} 

puts formatter % {
	first: "I had this thing.",
	second: "That you could type up right.",
	third: "but it didn't sing.",
	fourth: "so I said goodnight."
} 
