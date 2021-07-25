defmodule Boxicon.Solid.HourglassBottom do
  use Surface.Component

  @doc "Name as described in https://boxicons.com/"
  prop name, :string, required: true

  @doc "Width & height of the icon"
  prop size, :integer, default: 24

  @doc "CSS classes for the wrapping svg element"
  prop class, :string, default: ""

  @impl true
  def render(assigns) do
    ~F"""
      <svg xmlns="http://www.w3.org/2000/svg" width={"#{@size}"} height={"#{@size}"} viewBox="0 0 24 24"><path d="M5 2H4v2h1v1a7.014 7.014 0 0 0 3.433 6.02c.355.21.567.547.567.901v.158c0 .354-.212.691-.566.9A7.016 7.016 0 0 0 5 19v1H4v2h16v-2h-1v-1a7.016 7.016 0 0 0-3.434-6.021c-.354-.208-.566-.545-.566-.9v-.158c0-.354.212-.69.566-.9A7.016 7.016 0 0 0 19 5V4h1V2H5zm12 3a5.01 5.01 0 0 1-2.45 4.299A3.107 3.107 0 0 0 13.166 11h-2.332a3.114 3.114 0 0 0-1.385-1.702A5.008 5.008 0 0 1 7 5V4h10v1z"/></svg>
    """
  end

end
