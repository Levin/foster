defmodule FosterWeb.Components.Question2 do
  use FosterWeb, :live_component

  def mount(socket) do
    {:ok,
     socket
     |> assign(:slide_2, true)
     |> assign(:slide_3, false)
     |> assign(:path, "")
     |> assign(:answers, %{})
    }
  end

  def update(params, socket) do
    {:ok,
     socket
      |> assign(:answers, params.answers)
    }
  end

  def handle_event("validate", params, socket) do
    {:noreply,
     socket
     |> assign(:age, params["age"])
     |> assign(:region, params["region"])
     |> assign(:gender, params["gender"])
    }
  end

  def handle_event("submit", params, socket) do

    updated_answers =
      socket.assigns.answers
      |> Map.put(:agespan, params["age"])
      |> Map.put(:gender, params["gender"])
      |> Map.put(:pt_region, params["region"])

    {:noreply,
     socket
     |> assign(:answers, updated_answers)
     |> assign(:slide_2, false)
     |> assign(:slide_3, true)
    }
  end

  def render(assigns) do
    ~H"""
    <div>
      <%= if @slide_2 do %>
        <div class="mx-10">
          <div class="mb-4">
            <img src="/images/somekids.svg" />
          </div>
          <p class="text-2xl text-light_dark_matter font-inter">
            Breves dados demográficos
          </p>

          <.simple_form for={} phx-change="validate" phx-submit="submit" phx-target={@myself}>
            <div class="flex items-center gap-2">
              <.label>Idade</.label>
              <.input name="age" value="" placeholder="Age" type="select" options={["18-25", "26-35", "36-49", "50-65"]} />
            </div>
            <div class="flex items-center gap-2">
              <.label>Gênero</.label>
              <.input name="gender" value="" placeholder="Gender" type="select" options={["Não Binário", "Prefiro não dizer","Feminino", "Masculino"]} />
            </div>
            <div class="flex items-center gap-2">
              <.label>Região</.label>
              <.input name="region" value="" placeholder="Region" type="select" options={["aveiro", "beja", "braga", "bragança", "castelo_branco", "coimbra", "evora", "faro", "guarda", "leiria", "lisboa", "porto", "santarem", "setubal", "viana_do_castelo", "vila_real", "viseu", "madeira", "acores"]}
        />
            </div>
            <.button>Submeter</.button>
          </.simple_form>
        </div>
      <% end %>
      <%= if @slide_3 do %>
        <.live_component
          module={FosterWeb.Components.Question3}
          id="question_3"
          branch={assigns.path}
          answers={@answers}
        />
      <% end %>
    </div>
    """
  end
end
