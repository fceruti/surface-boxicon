defmodule Boxicon.Logos.MediumSquare do
  @moduledoc "logos/medium-square"
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
    <svg xmlns="http://www.w3.org/2000/svg" class={@class} fill={@fill} stroke={@stroke} width={@size} height={@size} viewBox="0 0 24 24" aria-hidden="true"><path d="M20 3H4a1 1 0 0 0-1 1v16a1 1 0 0 0 1 1h16a1 1 0 0 0 1-1V4a1 1 0 0 0-1-1zm-2.046 4.265-.966.925a.28.28 0 0 0-.106.271v6.801a.28.28 0 0 0 .106.271l.942.926v.204h-4.741v-.204l.977-.948c.097-.096.097-.125.097-.271V9.742l-2.716 6.896h-.368L8.018 9.742v4.622a.644.644 0 0 0 .176.531l1.271 1.541v.203H5.861v-.203l1.271-1.541a.618.618 0 0 0 .164-.531V9.02a.468.468 0 0 0-.152-.395l-1.13-1.36v-.203H9.52l2.71 5.943 2.382-5.943h3.343v.203z"/></svg>
    """
  end
end
