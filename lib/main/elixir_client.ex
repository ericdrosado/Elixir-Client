defmodule ElixirClient do
  import Client

  def main(args) do
    args |> parse_args |> process 
  end

  defp parse_args(args) do
    {options, _, _} = OptionParser.parse(args, 
                                         switches: [host: :string])
    options
  end

  defp process([]) do
    "No arguments given"
  end

  defp process(options) do
    get(options[:host])
  end

end
