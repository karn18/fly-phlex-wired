class NoteComponent < ViewComponent::Base
  def initialize(note:)
    @note = note
  end
end
