defmodule Boxicon.LogosAudible do
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
      <svg xmlns="http://www.w3.org/2000/svg" width={"#{@size}"} height={"#{@size}"} viewBox="0 0 24 24"><path d="M2.005 10.238v1.69l10.002 6.254 9.988-6.254v-1.69l-9.988 6.229z"/><path d="m15.938 12.469 1.465-.938c-1.161-1.701-3.153-2.876-5.396-2.876-2.257 0-4.236 1.135-5.371 2.89.093-.093.146-.146.238-.211 2.811-2.336 6.86-1.808 9.064 1.135z"/><path d="M9.051 13.063a2.99 2.99 0 0 1 1.78-.58c1.083 0 2.047.554 2.692 1.49l1.399-.871c-.607-.963-1.688-1.557-2.916-1.557-1.226 0-2.309.62-2.955 1.518zM5.25 9.012c4.117-3.246 9.937-2.362 13.037 1.953l.026.026 1.517-.938a9.337 9.337 0 0 0-7.823-4.235 9.35 9.35 0 0 0-7.825 4.235c.304-.342.686-.751 1.068-1.041z"/></svg>
    """
  end

end
