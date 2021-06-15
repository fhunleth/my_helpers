defmodule Toolshed.Top do
  @moduledoc """
  Find the top processes
  """
  @doc """
  List the running  processes and auto-update them after every `1_000` milliseconds.Press enter to exit.
  """
  def top() do
    IO.puts("Press enter to stop\n")

    {:ok, pid} = Toolshed.TopServer.start_link([])
    _ = IO.gets("")
    Toolshed.TopServer.stop(pid)
  end
end
