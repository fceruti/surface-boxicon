defmodule Boxicon.SolidFlame do
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
      <svg xmlns="http://www.w3.org/2000/svg" width={"#{@size}"} height={"#{@size}"} viewBox="0 0 24 24"><path d="M12.579 2.393a.982.982 0 0 0-1.153.006C9.592 3.728 4 8.252 4 14c0 3.247 1.948 6.043 4.734 7.296A3.971 3.971 0 0 1 8 19c-.017-3.221 3.558-6.893 3.71-7a.497.497 0 0 1 .579 0c.152.107 3.711 2.974 3.711 7.002 0 .854-.275 1.643-.733 2.294C18.052 20.043 20 17.248 20 14.005c0-5.861-5.582-10.307-7.421-11.612z"/></svg>
    """
  end

end
