defmodule Boxicon.RegularCreditCardAlt do
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
      <svg xmlns="http://www.w3.org/2000/svg" width={"#{@size}"} height={"#{@size}"} viewBox="0 0 24 24"><circle cx="15.5" cy="13.5" r="2.5"/><path d="M12 13.5c0-.815.396-1.532 1-1.988A2.47 2.47 0 0 0 11.5 11a2.5 2.5 0 1 0 0 5 2.47 2.47 0 0 0 1.5-.512 2.486 2.486 0 0 1-1-1.988z"/><path d="M20 4H4c-1.103 0-2 .897-2 2v12c0 1.103.897 2 2 2h16c1.103 0 2-.897 2-2V6c0-1.103-.897-2-2-2zM4 18V6h16l.002 12H4z"/></svg>
    """
  end

end
