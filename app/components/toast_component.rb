class ToastComponent < Phlex::Component
  def template
    div class: "flex space-x-2 justify-end", "data-controller": "toast", "data-toast-delay-value": "2000" do
      div class: "border border-indigo-600 bg-white shadow-lg w-96 max-w-full text-sm pointer-events-auto bg-clip-padding rounded-lg block",
        role: "alert", "aria-live":"assertive", "aria-atomic": "true" do
        div class: "bg-white flex justify-between items-center py-2 px-3 bg-clip-padding border-b border-gray-200 rounded-t-lg" do
          p "Notification", class: "font-bold text-gray-500"
          div class: "flex items-center" do
            p "1 min ago", class: "text-gray-600 text-xs"
          end
        end
        div class: "p-3 bg-white rounded-b-lg break-words text-gray-700" do
          "คุณได้รับการติดต่อเข้ามา"
        end
      end
    end
  end
end
