defmodule FosterWeb.Components.NavBar do
  use FosterWeb, :live_component

  def update(params, socket) do
    {:ok,
     socket
     |> assign(:languages, @languages)}
  end

  def handle_event("change_language", _params, socket) do
    {:noreply, socket}
  end

  def render(assigns) do
    ~H"""
    <div class="flex justify-center gap-3 font-nohami pt-6">
      <div>
        <a href="/">Home</a>
      </div>
      <div>
        <a href="/estatisticas">Estatísticas</a>
      </div>
      <div>
        <a href="/donativos">Donativos</a>
      </div>
    </div>
    """
  end
end
