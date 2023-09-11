require_relative 'person_class'

class Teacher < Person
  attr_reader :specialization

  def initialize(id, age, specialization, name = 'Unknown', parent_permission: true)
    super(id, age, name, parent_permission: parent_permission)
    @specialization = specialization
  end
end
