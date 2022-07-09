defmodule Boxicon do
  @moduledoc """
    Boxicon is surface component library that wraps the amazing boxicons library.

    Usage:

        defmodule MyComponent do
          use Surface.Component

          @impl true
          def render(assigns) do
            ~F"\""
              <Boxicon.Solid.Calendar
                class="w-8 h-8"
              />
            "\""
          end
        end
    To get a full list of all the available icons, go to https://boxicons.com/
  """
end

Boxicon.Generate.generate(Application.compile_env(:surface_boxicon, :icons, :all))
