defmodule Boxicon.Solid.CameraOff do
  @moduledoc "solid/camera-off"
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
    <svg xmlns="http://www.w3.org/2000/svg" class={@class} fill={@fill} stroke={@stroke} width={@size} height={@size} viewBox="0 0 24 24" aria-hidden="true"><path d="M4 20h11.879l-3.083-3.083A4.774 4.774 0 0 1 12 17c-2.71 0-5-2.29-5-5 0-.271.039-.535.083-.796L2.144 6.265C2.054 6.493 2 6.74 2 7v11c0 1.103.897 2 2 2zM20 5h-2.586l-2.707-2.707A.996.996 0 0 0 14 2h-4a.996.996 0 0 0-.707.293L6.586 5h-.172L3.707 2.293 2.293 3.707l18 18 1.414-1.414-.626-.626A1.98 1.98 0 0 0 22 18V7c0-1.103-.897-2-2-2zm-5.312 8.274A2.86 2.86 0 0 0 15 12c0-1.626-1.374-3-3-3-.456 0-.884.12-1.274.312l-1.46-1.46A4.88 4.88 0 0 1 12 7c2.71 0 5 2.29 5 5a4.88 4.88 0 0 1-.852 2.734l-1.46-1.46z"/></svg>
    """
  end
end
