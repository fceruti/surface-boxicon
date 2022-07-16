defmodule Boxicon.Regular.Sticker do
  @moduledoc "regular/sticker"
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
    <svg xmlns="http://www.w3.org/2000/svg" class={@class} fill={@fill} stroke={@stroke} width={@size} height={@size} viewBox="0 0 24 24" aria-hidden="true"><path d="M21.796 9.982C20.849 5.357 16.729 2 12 2 6.486 2 2 6.486 2 12c0 4.729 3.357 8.849 7.982 9.796a.988.988 0 0 0 .908-.272l10.633-10.633c.238-.238.34-.578.273-.909zM11 18a7.93 7.93 0 0 1 1.365-4.471 8.18 8.18 0 0 1 .978-1.186 8.211 8.211 0 0 1 1.184-.977 8.128 8.128 0 0 1 1.36-.738c.481-.203.986-.36 1.501-.466a8.112 8.112 0 0 1 2.17-.134l-8.529 8.529c-.013-.185-.029-.37-.029-.557zm-7-6c0-4.411 3.589-8 8-8 2.909 0 5.528 1.589 6.929 4.005a9.99 9.99 0 0 0-1.943.198c-.643.132-1.274.328-1.879.583a10.15 10.15 0 0 0-1.699.923c-.533.361-1.03.771-1.479 1.22s-.858.945-1.221 1.48c-.359.533-.67 1.104-.922 1.698A10.013 10.013 0 0 0 9 18c0 .491.048.979.119 1.461C6.089 18.288 4 15.336 4 12z"/></svg>
    """
  end
end
