require_relative 'person_class'

class Teacher < Person
  attr_accessor :specialization

  def initialize(age, name = 'Unknown', specialization, parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    @id = Random.rand(1..1000)
    @parent_permission = parent_permission
    @specialization = specialization
  end
end
