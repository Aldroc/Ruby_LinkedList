# Ruby_LinkedList
Linked List implementation in Ruby utilizing classes

Ruby doesn't have a native implementation of Linked Lists, as Arrays are plenty flexible with methods such as `#shift`, `#unshift`, `#pop`, `#push`, etc. This little project is an attempt at implementation of Linked Lists in Ruby using classes, complete with useful methods such as:

- `#append(value)` adds a new node containing value to the end of the list
- `#prepend(value)` adds a new node containing value to the start of the list
- `#size` returns the total number of nodes in the list
- `#head` returns the first node in the list
- `#tail` returns the last node in the list
- `#at(index)` returns the node at the given index
- `#pop` removes the last element from the list
- `#contains?(value)` returns true if the passed in value is in the list and otherwise returns false.
- `#find(value)` returns the index of the node containing value, or nil if not found.
- `#to_s` represent your LinkedList objects as strings.
