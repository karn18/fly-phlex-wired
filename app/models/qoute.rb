class Qoute
  attr_accessor :originator, :content

  def initialize(content:, originator:)
    @content = content
    @originator = originator
  end
end
