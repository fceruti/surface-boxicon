defmodule Boxicon.Logos.Skype do
  @moduledoc "logos/skype"
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
    <svg xmlns="http://www.w3.org/2000/svg" class={@class} fill={@fill} stroke={@stroke} width={@size} height={@size} viewBox="0 0 24 24" aria-hidden="true"><path d="M11.857 17.417c-2.947 0-4.294-1.524-4.294-2.641 0-.266.108-.521.298-.705a.946.946 0 0 1 .71-.264c1.261 0 .931 1.92 3.286 1.92 1.203 0 1.91-.736 1.91-1.425 0-.415-.234-.889-1.028-1.079l-2.629-.673c-2.111-.545-2.479-1.737-2.479-2.842 0-2.293 2.068-3.124 4.036-3.124 1.814 0 3.97 1.016 3.97 2.391 0 .592-.488.91-1.055.91-1.078 0-.897-1.536-3.063-1.536-1.077 0-1.645.513-1.645 1.23s.839.96 1.574 1.123l1.941.445c2.126.486 2.691 1.751 2.691 2.963 0 1.865-1.423 3.305-4.226 3.305m8.139-3.942c.086-.49.128-.986.128-1.482a8.472 8.472 0 0 0-2.952-6.474 8.211 8.211 0 0 0-6.788-1.856A4.818 4.818 0 0 0 7.935 3a4.954 4.954 0 0 0-4.27 2.519 5.103 5.103 0 0 0-.015 5.011 8.51 8.51 0 0 0 2.282 7.453 8.23 8.23 0 0 0 7.333 2.355 4.823 4.823 0 0 0 2.443.662 4.954 4.954 0 0 0 4.269-2.518 5.095 5.095 0 0 0 .016-5.009"/></svg>
    """
  end
end
