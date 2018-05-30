defmodule ElixirClient do

  def main(args) do
    args |> parse_args |> process
  end

  defp parse_args(args) do
    {options, _, _} = OptionParser.parse(args, 
                                         switches: [host: :string, directory: :string])
    options
  end

  defp process([]) do
    "No arguments given"
  end

  defp process(options) do
    "Host: #{options[:host]} Directory: #{options[:directory]}"
  end

end
