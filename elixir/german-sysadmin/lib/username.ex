defmodule Username do
  
  def sanitize(username) when username == [] do
    username
  end

  def sanitize(username) do
    accept? = &(&1 > ?` && &1 < ?{ || &1 == ?_ || &1 ==  ?ü || &1 ==  ?ö || &1 ==  ?ä || &1 ==  ?ß)

    filtered_name = Enum.filter(username, accept?) 
    Enum.map(filtered_name, &switch/1) |> List.flatten()
  end
  

  def switch(char) do
    case char do
    ?ü -> 'ue'
    ?ä -> 'ae'
    ?ö -> 'oe'
    ?ß -> 'ss'
    _ -> char
  end
  end

end
