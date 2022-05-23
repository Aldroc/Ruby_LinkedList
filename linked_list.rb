class LinkedList
    # initialize new linked list
    def initialize
        @head = nil
        @tail = nil
    end

    # add new value at the end of the linked list
    def append(value)
        new_node = Node.new(value)
        if @head == nil
            @head = new_node
            @tail = @head
        elsif @head == @tail
            @tail = new_node
            @head.next_node = @tail
        else
            @tail.next_node = new_node
            @tail = new_node
        end
    end

    # add new value at the beginning at the linked list
    def prepend(value)
        new_node = Node.new(value, @head)
        @head = new_node
    end

    # return the size of the linked list 
    def size
        if @head == nil
            return 0
        else
            counter = 1
            node = @head
            while(node.next_node != nil)
                counter += 1
                node = node.next_node
            end
        end
        counter
    end

    # return head of linked list
    def head
        @head.value
    end

    # return tail of linked list
    def tail
        @tail.value
    end

    # return data at index
    def at(index)
        if index >= self.size
            puts "NullIndexException: Index does not exist"
        else
            counter = 0
            node = @head
            while(node.next_node != nil)
                if counter == index
                    return node.value
                end
                counter += 1
                node = node.next_node
            end
            return node.value
        end
    end

    # delete data at the end of the linked list
    def pop
        if @tail == nil
            puts "NoDataException: No data to pop"
        else
            node = @head
            while(node.next_node != nil)
                if node.next_node == @tail
                    @tail = node
                    @tail.next_node = nil
                    break
                end
            end
        end
    end

    # method to check if a value is present in the linked list
    def contains?(value)
        if @head == nil
            puts "NoDataException: No data to evaluate"
        else
            node = @head
            while(node.next_node != nil)
                if node.value == value
                    return true
                end
                node = node.next_node
            end
            if node.value == value
                return true
            end
            return false
        end
    end

    # method to return index of specified value in linked list
    def find(value)
        if @head == nil
            puts "NoDataException: No data to evaluate"
        else
            counter = 0
            node = @head
            while(node.next_node != nil)   
                if node.value == value
                    return counter
                end
                counter += 1
                node = node.next_node
            end
            if node.value == value
                return counter
            end
            return "nil"
        end
    end

    # method to print out the linked list
    def to_s
        if @head == nil
            puts "nil"
        else
            node = @head
            while(node.next_node != nil)
                print "( #{node.value} ) -> "
                node = node.next_node
            end
            print "( #{node.value} ) -> nil"
        end
    end
end

class Node
    attr_accessor :value, :next_node
    def initialize(value = nil, next_node = nil)
        @value = value
        @next_node = next_node
    end
end

list = LinkedList.new
list.append("b")
list.prepend("a")
puts list.size
puts list.head
puts list.tail
puts list.at(1)
puts list.contains?("b")
list.pop
puts list.contains?("b")
puts list.find("b")
list.append("b")
puts list.contains?("b")
puts list.find("b")
list.append("c")
puts list.find("a")
puts list.find("c")
list.to_s