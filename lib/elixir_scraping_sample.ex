defmodule ElixirScrapingSample do
  use Hound.Helpers

  def start do
    url = "http://blog.bokuweb.me"
    IO.puts "access to #{url} ..."
    Hound.start_session
    navigate_to(url)
    IO.puts page_title()
  end
end
