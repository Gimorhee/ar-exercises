# require 'pg'

class Dragon
    attr_accessor :name, :color
    attr_reader :id
    def initialize(name, color)
        @name  = name
        @color = color
        puts "testing"
    end

    #instance method
    def save
        if id
            update
        else 
            insert
        end
    end 

    def update
        puts "UPDATE dragons SET name = '#{name}', color ='#{color}' WHERE id = #{id}"
    end

    def insert
        puts "INSERT INTO dragons (name, color) VALUES ('#{name}', '#{color}') RETURNING id" ##EXAMPLE ##@id = result
    end

    def destroy
    end

    def self.find(id)
        puts "SELECT * FROM dragons WHERE id = #{id}"
    end

end


rhaegal = Dragon.new("Rhaegal", "red")
puts "Initialized #{rhaegal.name} as red"
rhaegal.save
# rhaegal.save ## => INSERT INTO dragons

puts "Updating #{rhaegal.name} to green"
rhaegal.color = "green"
rhaegal.save ## => UPDATE

#====================================================================================================================
#CREATE
current = Cohort.new(name: "", start_date: "", location: "");
current.save # => INSERT

#UPDATE
puts "Name: #{current.name}"
current.name = "Sledgehammer"
current.save # => UPDATE

#READ(SEARCH)
nima = Student.create(first_name: "nima", last_name: 'Boscarino', email: "abcd@gmail.com", cohort_id: current.id)
puts nima.inspect

cohorts = Cohort.where(location: "Vancouver").order("created_at DESC")

cohorts.each do |cohort|
    puts "Found Cohort #{cohort.name} in Van"
    students = Student.where(cohort_id: cohort.id).count
    puts "Found #{students} students"
end


