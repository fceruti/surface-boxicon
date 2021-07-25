defmodule Boxicon.Solid.MobileVibration do
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
      <svg xmlns="http://www.w3.org/2000/svg" width={"#{@size}"} height={"#{@size}"} viewBox="0 0 24 24"><path d="M15.535 2.808a2.003 2.003 0 0 0-2.828 0l-9.899 9.899a2.001 2.001 0 0 0 0 2.828l5.657 5.657c.39.39.902.585 1.414.585s1.024-.195 1.414-.585l9.899-9.899c.78-.779.78-2.049 0-2.828l-5.657-5.657zM8.707 16.707a.999.999 0 1 1-1.414-1.414.999.999 0 1 1 1.414 1.414zm7 5-1.414-1.414 6-6 1.414 1.415zM8.293 2.293l1.414 1.414-6 6-1.414-1.415z"/></svg>
    """
  end

end
