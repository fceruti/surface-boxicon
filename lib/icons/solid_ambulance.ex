defmodule Boxicon.SolidAmbulance do
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
      <svg xmlns="http://www.w3.org/2000/svg" width={"#{@size}"} height={"#{@size}"} viewBox="0 0 24 24"><path d="M21.86 12.48 19.15 8a2 2 0 0 0-1.72-1H15V5a1 1 0 0 0-1-1H4a2 2 0 0 0-2 2v10a2 2 0 0 0 1 1.73 3.49 3.49 0 0 0 7 .27h3.1a3.48 3.48 0 0 0 6.9 0 2 2 0 0 0 2-2v-3a1.07 1.07 0 0 0-.14-.52zM6.5 19A1.5 1.5 0 1 1 8 17.5 1.5 1.5 0 0 1 6.5 19zm5.5-8h-2v2H8v-2H6V9h2V7h2v2h2zm4.5 8a1.5 1.5 0 1 1 1.5-1.5 1.5 1.5 0 0 1-1.5 1.5zM15 12V9h2.43l1.8 3z"/></svg>
    """
  end

end
