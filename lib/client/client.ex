defmodule Client do

  def get(host) do
    {_, response}= HTTPoison.get(host, [{"Accept", "application/json"}])
    IO.puts(response.body)
  end

end
