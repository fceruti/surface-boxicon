defmodule Boxicon.Logos.Quora do
  @moduledoc "logos/quora"
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
    <svg xmlns="http://www.w3.org/2000/svg" class={@class} fill={@fill} stroke={@stroke} width={@size} height={@size} viewBox="0 0 24 24" aria-hidden="true"><path d="M12.555 17.025c-.624-1.227-1.354-2.465-2.781-2.465-.271 0-.546.046-.795.157l-.484-.967c.59-.509 1.544-.911 2.77-.911 1.908 0 2.889.922 3.667 2.094.459-1.001.678-2.354.678-4.03 0-4.188-1.308-6.336-4.366-6.336-3.014 0-4.318 2.148-4.318 6.336 0 4.164 1.305 6.291 4.318 6.291.478 0 .913-.051 1.311-.169zm.747 1.461a7.977 7.977 0 0 1-2.059.274c-4.014 0-7.941-3.202-7.941-7.858C3.303 6.203 7.229 3 11.243 3c4.081 0 7.972 3.179 7.972 7.903 0 2.628-1.226 4.763-3.007 6.143.572.861 1.157 1.436 1.988 1.436.899 0 1.261-.687 1.328-1.236h1.167c.07.73-.301 3.754-3.574 3.754-1.989 0-3.035-1.146-3.822-2.496l.007-.018z"/></svg>
    """
  end
end
