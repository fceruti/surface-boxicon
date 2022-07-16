defmodule Boxicon.Solid.FilePng do
  @moduledoc "solid/file-png"
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
    <svg xmlns="http://www.w3.org/2000/svg" class={@class} fill={@fill} stroke={@stroke} width={@size} height={@size} viewBox="0 0 24 24" aria-hidden="true"><path d="M7.782 14.576c-.186 0-.312.018-.377.036v1.193c.077.018.174.023.306.023.485 0 .785-.246.785-.659 0-.371-.258-.593-.714-.593z"/><path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8l-6-6zM9.03 16.105c-.313.293-.774.426-1.313.426-.12 0-.229-.007-.312-.019v1.445h-.906V13.97a7.504 7.504 0 0 1 1.235-.083c.563 0 .966.107 1.235.323.258.204.432.54.432.936s-.131.731-.371.959zm4.302 1.853h-.96l-.863-1.56c-.24-.432-.504-.953-.701-1.427l-.019.006c.024.534.036 1.104.036 1.763v1.218h-.84v-4.042h1.067l.84 1.481c.24.426.479.93.659 1.385h.019a14.746 14.746 0 0 1-.078-1.685v-1.182h.84v4.043zm4.169-.186a4.512 4.512 0 0 1-1.349.228c-.737 0-1.271-.186-1.644-.546-.371-.348-.575-.875-.569-1.469.006-1.344.983-2.111 2.309-2.111.521 0 .924.103 1.121.198l-.191.731c-.222-.096-.498-.174-.941-.174-.762 0-1.338.432-1.338 1.308 0 .833.522 1.325 1.271 1.325.21 0 .378-.024.45-.061v-.846h-.624v-.713h1.505v2.13zM14 9h-1V4l5 5h-4z"/></svg>
    """
  end
end