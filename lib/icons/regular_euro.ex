defmodule Boxicon.RegularEuro do
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
      <svg xmlns="http://www.w3.org/2000/svg" width={"#{@size}"} height={"#{@size}"} viewBox="0 0 24 24"><path d="M13.464 6c1.43 0 2.779.613 3.799 1.726l1.475-1.352C17.334 4.843 15.461 4 13.464 4c-1.998 0-3.87.843-5.272 2.375A8.034 8.034 0 0 0 6.589 9H4v2h2.114c-.038.33-.064.663-.064 1s.026.67.064 1H4v2h2.589c.362.97.901 1.861 1.603 2.626C9.594 19.157 11.466 20 13.464 20c1.997 0 3.87-.843 5.273-2.374l-1.475-1.352C16.243 17.387 14.894 18 13.464 18s-2.778-.612-3.798-1.726A5.937 5.937 0 0 1 8.801 15H13v-2H8.139c-.05-.328-.089-.66-.089-1s.039-.672.089-1H13V9H8.801c.24-.457.516-.893.865-1.274C10.686 6.613 12.034 6 13.464 6z"/></svg>
    """
  end

end
