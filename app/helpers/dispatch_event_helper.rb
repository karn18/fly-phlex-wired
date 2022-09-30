module DispatchEventHelper
  def dispatch_event(name)
    turbo_stream_action_tag :dispatch_event, name: name
  end
end

Turbo::Streams::TagBuilder.prepend(DispatchEventHelper)
