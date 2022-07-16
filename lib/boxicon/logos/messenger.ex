defmodule Boxicon.Logos.Messenger do
  @moduledoc "logos/messenger"
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
    <svg xmlns="http://www.w3.org/2000/svg" class={@class} fill={@fill} stroke={@stroke} width={@size} height={@size} viewBox="0 0 24 24" aria-hidden="true"><path d="M12 3c-4.92 0-8.91 3.729-8.91 8.332 0 2.616 1.291 4.952 3.311 6.479V21l3.041-1.687c.811.228 1.668.35 2.559.35 4.92 0 8.91-3.73 8.91-8.331C20.91 6.729 16.92 3 12 3zm.938 11.172-2.305-2.394-4.438 2.454 4.865-5.163 2.305 2.395 4.439-2.455-4.866 5.163z"/></svg>
    """
  end
end
