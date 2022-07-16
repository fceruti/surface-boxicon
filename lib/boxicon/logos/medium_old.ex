defmodule Boxicon.Logos.MediumOld do
  @moduledoc "logos/medium-old"
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
    <svg xmlns="http://www.w3.org/2000/svg" class={@class} fill={@fill} stroke={@stroke} width={@size} height={@size} viewBox="0 0 24 24" aria-hidden="true"><path d="M21.957 6.73a.073.073 0 0 0-.019-.097c-.004-.004-.008-.008-.012-.01l-.006-.002-6.033-3.018a.729.729 0 0 0-.292-.067.692.692 0 0 0-.586.317l-3.474 5.646 4.359 7.083 6.063-9.852zm-1.064 13.543c.611.306 1.107.092 1.107-.478V8.483l-5.809 9.439 4.702 2.351zM9.622 8.213v6.426l5.711 2.855zm-7.068 9.558 5.19 2.595a.845.845 0 0 0 .374.098c.323 0 .549-.25.549-.669V6.701a.067.067 0 0 0-.035-.059L2.739 3.697a.669.669 0 0 0-.3-.079c-.258 0-.439.199-.439.534v12.723c0 .341.25.744.554.896z"/></svg>
    """
  end
end
