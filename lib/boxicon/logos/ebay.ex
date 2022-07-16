defmodule Boxicon.Logos.Ebay do
  @moduledoc "logos/ebay"
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
    <svg xmlns="http://www.w3.org/2000/svg" class={@class} fill={@fill} stroke={@stroke} width={@size} height={@size} viewBox="0 0 24 24" aria-hidden="true"><path d="M7.021 12.111V8.004h1.001v2.525c.493-.586 1.17-.756 1.838-.756 1.118 0 2.361.754 2.361 2.383 0 .195-.014.381-.051.559.2-.797 1.063-1.09 2.418-1.123.426-.016.914-.016 1.302-.016v-.111c0-.738-.464-1.039-1.276-1.039-.602 0-1.04.25-1.09.676H12.46c.113-1.076 1.253-1.352 2.242-1.352.889 0 1.666.225 2.017.852l-.365-.702h1.177l1.716 3.443 1.716-3.445H22l-3.105 6.098h-1.124l.894-1.703-1.945-3.656c.108.213.167.465.167.777v2.055c0 .289.009.574.034.838h-.931a5.478 5.478 0 0 1-.038-.639c-.503.613-1.103.803-1.937.803-1.236 0-1.897-.652-1.897-1.416 0-.125.013-.236.031-.338-.251 1.041-1.135 1.74-2.31 1.74-.727 0-1.414-.262-1.837-.775 0 .201-.013.412-.033.611h-.986c.018-.324.034-.713.034-1.037v-.877H2.985c.054.914.683 1.451 1.547 1.451.599 0 1.131-.25 1.309-.775h1.035c-.2 1.078-1.344 1.439-2.329 1.439-1.789.018-2.582-.973-2.582-2.301 0-1.463.819-2.428 2.602-2.428 1.409 0 2.445.738 2.454 2.342v.004zm7.627.153c-.915.027-1.479.193-1.479.793 0 .389.301.809 1.09.809 1.052 0 1.615-.574 1.615-1.514v-.109c-.376 0-.826.006-1.239.02h.011l.002.001zm-5.059 1.564c.927 0 1.566-.672 1.566-1.686s-.642-1.686-1.58-1.686c-.928 0-1.578.672-1.578 1.686s.639 1.686 1.565 1.686h.027zM5.958 11.73c-.037-.939-.714-1.291-1.44-1.291-.788 0-1.414.395-1.516 1.291h2.956z"/></svg>
    """
  end
end
