class Stack
    def initialize(stack = [])
      # create a var to store stack here!
      @stack = stack
    end

    def add(el)
      # adds an element to the stack
      @stack << el
    end

    def remove
      # removes one element from the stack
      @stack.pop
    end

    def show
      # return a copy of the stack
      @stack
    end
  end

  class Queue

    def initialize(stack = [])
      @stack = stack
    end

    def enqueue(el)
      @stack.unshift(el)
    end

    def dequeue
      @stack.pop
    end

    def show
      @stack
    end
  end

  class Map

    def initialize(pairs = [])
      @pairs = pairs
    end

    def assign(key, value)
      match = 0
      @pairs.each do |sub_arr|
        if key == sub_arr[0]
          sub_arr[1] = value
          match += 1
          return @pairs
        end
      end
      @pairs << [key, value] if match == 0
    end

    def lookup(key)
      @pairs.each do |sub_arr|
        return sub_arr[1] if sub_arr[0] == key
      end
    end

    def remove(key)
      @pairs.each do |sub_arr|
        @pairs.delete(sub_arr) if sub_arr[0] == key
      end
    end

    def show
      @pairs
    end

  end
