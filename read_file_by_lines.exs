defmodule FRead do
  def load_letters do
    filename = "temp.txt"
    if File.exists?(filename) do
      stream = File.stream!(filename, [:read, :utf8], :line) # how to get this?
      data = Enum.reduce stream, [], fn(line, listing) ->
        [line | listing]
      end
      data
    end
  end 
end 
 
FRead.load_letters |> Enum.reverse |> IO.puts
