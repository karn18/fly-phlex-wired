require "http"
require "json"

class QoutesGenerator
  def initialize
    @url = "https://quotes15.p.rapidapi.com/quotes/random/"
  end

  def random
    ctx = OpenSSL::SSL::SSLContext.new
    ctx.verify_mode = OpenSSL::SSL::VERIFY_NONE

    response = HTTP.headers({
      "X-RapidAPI-Key": ENV["RAPID_API_KEY"],
      "X-RapidAPI-Host": ENV["RAPID_API_HOST"]
    }).get(@url, ssl_context: ctx)
    if response.status.success?
      body = JSON.parse(response.body).with_indifferent_access
      Qoute.new(content: body[:content], originator: body[:originator][:name])
    else
      nil
    end
  end
end
