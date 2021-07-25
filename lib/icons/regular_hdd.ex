defmodule Boxicon.RegularHdd do
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
      <svg xmlns="http://www.w3.org/2000/svg" width={"#{@size}"} height={"#{@size}"} viewBox="0 0 24 24"><path d="m21.983 13.821-1.851-10.18A1.998 1.998 0 0 0 18.165 2H5.835a2 2 0 0 0-1.968 1.643l-1.85 10.178.019.003c-.012.06-.036.114-.036.176v5c0 1.103.897 2 2 2h16c1.103 0 2-.897 2-2v-5c0-.063-.024-.116-.035-.176l.018-.003zM5.835 4h12.331l1.637 9H4.198l1.637-9zM4 19v-4h16l.002 4H4z"/><path d="M17 16h2v2h-2zm-3 0h2v2h-2z"/></svg>
    """
  end

end
