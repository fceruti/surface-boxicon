defmodule Boxicon.LogosVimeo do
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
      <svg xmlns="http://www.w3.org/2000/svg" width={"#{@size}"} height={"#{@size}"} viewBox="0 0 24 24"><path d="M21.062 10.414c-2.036 4.349-6.949 10.267-10.054 10.267-3.06 0-3.501-6.527-5.173-10.869-.823-2.138-1.354-1.646-2.896-.567L2 8.031c2.248-1.976 4.499-4.272 5.88-4.399 1.559-.148 2.517.916 2.873 3.193.475 2.994 1.137 7.641 2.291 7.641.9 0 3.117-3.686 3.232-5.004.203-1.93-1.421-1.989-2.828-1.387 2.228-7.295 11.494-5.95 7.614 2.339z"/></svg>
    """
  end

end
