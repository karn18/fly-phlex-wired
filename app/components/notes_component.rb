class NotesComponent < ViewComponent::Base
  include Turbo::FramesHelper

  def initialize(notes:)
    @notes = notes
  end
end
