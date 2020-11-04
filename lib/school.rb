class School
    def initialize(school)
       @school = school
        @roster = {}
    end
    def roster
      @roster
    end
    def add_student(student, grade)
        if @roster.empty?
          @roster[grade] = []
          @roster[grade] << student
        else
         @roster.each_key do |key|
           if key == grade
             @roster[key] << student
              return
           end
          end
          @roster[grade] = []
         @roster[grade] << student
        end
    end
    def grade(grade)
        @roster[grade]
    end
    def sort
        @roster.each_key do |key|
         @roster[key] = @roster[key].sort
        end
        @roster
    end


  end