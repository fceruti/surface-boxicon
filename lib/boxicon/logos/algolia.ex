defmodule Boxicon.Logos.Algolia do
  @moduledoc "logos/algolia"
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
    <svg xmlns="http://www.w3.org/2000/svg" class={@class} fill={@fill} stroke={@stroke} width={@size} height={@size} viewBox="0 0 24 24" aria-hidden="true"><path d="M12.177 9.059a3.582 3.582 0 0 0-3.576 3.584 3.584 3.584 0 0 0 3.576 3.585 3.578 3.578 0 0 0 3.575-3.585 3.582 3.582 0 0 0-3.575-3.584zm2.518 2.268-2.366 1.229c-.07.039-.153-.017-.153-.093V9.791h.001c0-.06.054-.104.109-.104a2.943 2.943 0 0 1 2.452 1.492c.028.055.011.121-.043.148z"/><path d="M18.578 3H5.361A2.363 2.363 0 0 0 3 5.366v13.277a2.368 2.368 0 0 0 2.361 2.371h13.217a2.367 2.367 0 0 0 2.361-2.372V5.372A2.368 2.368 0 0 0 18.578 3zm-8.112 3.404a.78.78 0 0 1 .779-.781h1.815c.43 0 .778.35.778.781v.618a.106.106 0 0 1-.131.104 5.677 5.677 0 0 0-3.106.017c-.07.016-.136-.033-.136-.104v-.635zM7.08 8.993a.78.78 0 0 1 .001-1.103l.371-.371.002-.002a.776.776 0 0 1 1.099.002l.31.311c.043.05.038.127-.017.159a5.82 5.82 0 0 0-1.296 1.3c-.044.049-.114.06-.163.011l-.306-.306-.001-.001zm5.097 8.737a5.078 5.078 0 0 1-5.074-5.087c0-2.813 2.272-5.092 5.074-5.092a5.074 5.074 0 0 1 5.074 5.086c0 2.815-2.272 5.093-5.074 5.093z"/></svg>
    """
  end
end
