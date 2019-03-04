class Target
  def self.run(mock)
    mock.run(Id.new)
  end
end

class Id
  attr_accessor :custom_value
  def initialise
    @custom_value = 1
  end
end
