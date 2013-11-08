class Person
    attr_accessor :name, :add

    def initialize name, add
        @name = name
        @add = add
    end
end


people = [Person.new('anthony', 'here'), Person.new('Tom', 'there'), Person.new('Abraham', 'hell')]


result = people.select do |p|
    p.add.include? 'ere'
end

p result
