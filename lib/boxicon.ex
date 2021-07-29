defmodule Boxicon do
  @moduledoc """
    Boxicon is surface component library that wraps the amazing boxicons library.

    Usage:

        defmodule MyComponent do
          use Surface.Component

          @impl true
          def render(assigns) do
            ~F"\""
              <Boxicon
                name="calendar"
                type="regular"
                size="64"
                class="icon green"
              />
            "\""
          end
        end


    To get a full list of all the available icons, go to https://boxicons.com/
  """

  use Surface.Component

  @doc "Type of the icon"
  prop type, :string, values!: ["solid", "regular", "logos"]

  @doc "Name of the icon"
  prop name, :string, required: true

  @doc "Width & height of the icon"
  prop size, :integer, default: 24

  @doc "CSS classes for the wrapping svg element"
  prop class, :string, default: "icon"
end
