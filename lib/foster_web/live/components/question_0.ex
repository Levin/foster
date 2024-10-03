defmodule FosterWeb.Components.Question0 do
  use FosterWeb, :live_component

  def mount(socket) do
    {:ok,
      socket
      |> assign(:slide_0, true)
      |> assign(:slide_1, false)
      |> assign(:is_true, false)
      |> assign(:no_knowledge, false)
      |> assign(:knowledge, false)
    }
  end

  def update(params, socket) do
    IO.inspect(params)
    {:ok, socket}
  end

  def handle_event("submit", params, socket) do
    answer =
      case params["question_0"] do
        "1" -> "yes"
        "0" -> "no"
      end

    updated_answers = Map.put(%{}, :knowledge, answer)

    {:noreply,
     socket
     |> assign(:path, params["question_0"])
     |> assign(:answers, updated_answers)
     |> assign(:slide_0, false)
     |> assign(:slide_1, true)}
  end

  def render(assigns) do
    ~H"""
    <div>
      <%= if @slide_0 do %>
        <div class="mx-10  space-y-2">
          <div class="mb-4">
            <img src="/images/somekids.svg" />
          </div>
        <p class="text-2xl">
          <span class="font-bold font-nohemi">
            Sabe que em Portugal há mais de 6000 crianças e jovens a viver em instituições?
          </span>
        </p>
        <p class="text-light_dark_matter font-inter">
        Descubra a importância do Acolhimento Familiar para Crianças e Jovens e como poderá ter impacto.
        A participação é anónima. Demora apenas 5 minutos.
        </p>

        <p class="text-2xl text-light_dark_matter font-inter">
        Já ouviu falar de Acolhimento Familiar?
        </p>

      <.simple_form
      for={}
      phx-submit="submit"
      phx-target={@myself}
      >
      <div class="flex items-center gap-2">
        <input type="radio" name="question_0" value="0" >
        <p class="font-nohemt">Não</p>
      </div>

      <div class="flex items-center gap-2">
        <input type="radio" name="question_0" value="1">
        <p class="font-nohemt">Sim</p>
      </div>

            <.button>Submeter</.button>
          </.simple_form>
        </div>
      <% end %>
      <%= if @slide_1 do %>
        <.live_component module={FosterWeb.Components.Question1a} id="question_1_a" path={@path} answers={@answers} />
        <% end %>
    </div>
    """
  end
end
