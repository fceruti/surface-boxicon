defmodule Boxicon.Solid.FileJs do
  @moduledoc "solid/file-js"
  use Surface.Component
  import Boxicon

  @doc "css class"
  prop class, :css_class, default: "w-5 h-5"

  @doc "svg fill (default: currentColor)"
  prop fill, :string, default: "currentColor"

  @doc "svg stroke (default: )"
  prop stroke, :string, default: ""

  @doc "Width & height of the icon (default: 100%)"
  prop size, :string, default: "100%"

  def render(assigns) do
    ~F"""
    <svg xmlns="http://www.w3.org/2000/svg" class={@class} fill={@fill} stroke={@stroke} width={@size} height={@size} viewBox="0 0 24 24" aria-hidden="true"><path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8l-6-6zm-2.745 14.186c0 1.345-.644 1.814-1.681 1.814-.245 0-.567-.042-.777-.112l.119-.861c.147.049.336.084.546.084.448 0 .729-.203.729-.938v-2.97h1.064v2.983zm2.043 1.807c-.539 0-1.071-.141-1.337-.287l.217-.883c.287.147.729.294 1.184.294.491 0 .749-.203.749-.511 0-.295-.224-.463-.791-.666-.784-.272-1.295-.707-1.295-1.394 0-.806.672-1.422 1.786-1.422.533 0 .925.112 1.205.238l-.238.861c-.189-.091-.525-.224-.987-.224s-.687.21-.687.455c0 .301.267.435.875.665.834.309 1.226.742 1.226 1.408-.002.793-.61 1.466-1.907 1.466zM14 9h-1V4l5 5h-4z"/></svg>
    """
  end
end
