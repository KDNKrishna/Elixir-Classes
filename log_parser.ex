defmodule LogParser do
  def valid_line?(line) do
    # Please implement the valid_line?/1 function
    Regex.match?(~r/^\[DEBUG|INFO|WARNING|ERROR\]\s\w+/, line)
  end

  def split_line(line) do
    # Please implement the split_line/1 function
    Regex.split(~r{<[~*=-]*>}, line)
  end

  def remove_artifacts(line) do
    # Please implement the remove_artifacts/1 function
    regex = ~r/end-of-line\d+/i
    String.replace(line, regex, "")
  end

  def tag_with_user_name(line) do
    # Please implement the tag_with_user_name/1 function
    regex = ~r/User\s+(\S+)/
    case Regex.run(regex, line) do
      [_user_name, name] -> "[USER] #{name} " <> line
      _ -> line
    end
  end
end
