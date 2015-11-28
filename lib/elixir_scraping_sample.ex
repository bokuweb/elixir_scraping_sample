defmodule ElixirScrapingSample do
  use Hound.Helpers

  def start do
    url = "http://yahoo.co.jp"
    IO.puts "access to #{url} ..."
    Hound.start_session()
    navigate_to url
    IO.puts page_title()
    IO.inspect find_element(:class, "emphasis")
            |> find_all_within_element(:tag, "li")
            |> Enum.map(fn(x) -> visible_text x end)
    take_screenshot "screenshot-test.png"
  end
end
