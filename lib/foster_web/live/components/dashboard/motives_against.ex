defmodule FosterWeb.Components.Dashboard.MotivesAgainst do
  use FosterWeb, :live_component

  alias Contex.{Plot, Dataset, BarChart}

  def mount(socket) do
    motives = 
      Foster.Answers.all_answers()
      |> Enum.group_by(& &1.body["motive_against_fostering"])
      |> Enum.map(fn {groupname, answers} -> [groupname, length(answers)]  end)

    IO.inspect(motives)

    dataset =
      Dataset.new(motives)

    plot = Contex.Plot.new(dataset, Contex.BarChart, 600, 400)

    {:ok, 
      socket
      |> assign(:plot, plot)
    }
  end

  def render(assigns) do
    ~H"""
    <div>
    </div>
    """
  end

end
