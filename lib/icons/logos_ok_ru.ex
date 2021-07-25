defmodule Boxicon.Logos.OkRu do
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
      <svg xmlns="http://www.w3.org/2000/svg" width={"#{@size}"} height={"#{@size}"} viewBox="0 0 24 24"><path d="M11.986 12.341c-2.825 0-5.173-2.346-5.173-5.122C6.813 4.347 9.161 2 11.987 2c2.922 0 5.173 2.346 5.173 5.219a5.142 5.142 0 0 1-5.157 5.123l-.017-.001zm0-7.324c-1.196 0-2.106 1.005-2.106 2.203 0 1.196.91 2.106 2.107 2.106 1.245 0 2.107-.91 2.107-2.106.001-1.199-.862-2.203-2.108-2.203zm2.06 11.586 2.923 2.825c.575.621.575 1.531 0 2.106-.622.621-1.581.621-2.06 0l-2.922-2.873-2.826 2.873c-.287.287-.671.43-1.103.43-.335 0-.718-.144-1.054-.43-.575-.575-.575-1.485 0-2.107l2.97-2.825a13.49 13.49 0 0 1-3.063-1.339c-.719-.383-.862-1.34-.479-2.059.479-.718 1.341-.909 2.108-.43a6.62 6.62 0 0 0 6.897 0c.767-.479 1.676-.288 2.107.43.432.719.239 1.675-.432 2.059-.909.575-1.963 1.006-3.065 1.341l-.001-.001z"/></svg>
    """
  end

end
