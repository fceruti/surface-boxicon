defmodule Boxicon.Solid.PieChartAlt do
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
      <svg xmlns="http://www.w3.org/2000/svg" width={"#{@size}"} height={"#{@size}"} viewBox="0 0 24 24"><path d="M19.071 4.929A9.97 9.97 0 0 0 12 2a9.936 9.936 0 0 0-7.071 2.929C3.04 6.818 2 9.33 2 12s1.04 5.182 2.929 7.071C6.818 20.96 9.33 22 12 22s5.182-1.04 7.071-2.929A9.936 9.936 0 0 0 22 12a9.97 9.97 0 0 0-2.929-7.071zm-1.414 12.728C16.146 19.168 14.137 20 12 20s-4.146-.832-5.657-2.343C4.832 16.146 4 14.137 4 12s.832-4.146 2.343-5.657A7.948 7.948 0 0 1 12 4v8h8a7.948 7.948 0 0 1-2.343 5.657z"/></svg>
    """
  end

end
