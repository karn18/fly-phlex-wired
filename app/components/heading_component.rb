class HeadingComponent < Phlex::Component
  def template
    h1 "Hello World!",
      class: "font-bold text-5xl text-green-400"
  end
end
