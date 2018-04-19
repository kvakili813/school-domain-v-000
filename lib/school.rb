require 'pry'
class School

attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    @roster[grade] ||= []
    @roster[grade] << student
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    student = []
    roster.each do |key, value|
      student = value.sort
      roster[key] = student
    end
  end

end
