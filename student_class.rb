require_relative 'person_class'

class Student < Person
  attr_reader :classroom
  attr_accessor :id, :parent_permission

  def initialize(age, name, classroom, parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    @id = Random.rand(1..1000)
    @parent_permission = parent_permission
    @classroom = classroom
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end

  def play_hooky
    '¯\\(ツ)/¯'
  end
end
