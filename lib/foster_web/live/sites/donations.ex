defmodule FosterWeb.Sites.Donations do
  use FosterWeb, :live_view

  def mount(params, session, socket) do
    {:ok, socket
    |> assign(:url, "https://hack-foster.fly.dev/")}
  end

  def render(assigns) do
    ~H"""
    <div class="mx-10">
      <div class="mb-4">
        <img src="/images/somekids.svg" />
      </div>

      <p class="text-2xl font-bold font-nohemi">
        Obrigado por ter chegado até aqui. Por favor, considere partilhar o questionário e apoiar diretamente a AIPAR:
      </p>

      <div class="mt-4">
        <div class="font-bold">
          <p>Donativos:</p>
        </div>
        <ul class="list-disc list-inside">
          <li>Consignação para IRS 0,5 % / 0,15 % do IVA Suportado</li>
          <li>Transferência Bancária (NIB BPI da AIPAR): 0010 0000 6107 5001 0001</li>
          <li>AIPAR NIF: 501 650 296</li>
        </ul>
      </div>

      <div class="mt-4">
        <div class="font-bold">
          <p>Compartilhe nas redes sociais:</p>
        </div>

        <div class="flex gap-4">
          <a href={"https://www.facebook.com/sharer/sharer.php?u=#{@url}"} target="_blank" class="text-blue-600">
            Facebook
          </a>
          <a href={"https://twitter.com/intent/tweet?url=#{@url}&text=Check%20this%20out!"} target="_blank" class="text-blue-400">
            Twitter
          </a>
          <a href={"https://www.linkedin.com/shareArticle?mini=true&url=#{@url}&title=Check%20this%20out!"} target="_blank" class="text-blue-700">
            LinkedIn
          </a>
          <a href={"mailto:?subject=Check%20this%20out!&body=#{@url}"} class="text-gray-600">
            Email
          </a>
        </div>
      </div>
    </div>
    """
  end
end
