defmodule Mix.Tasks.Boxicon.Gen.Module do
  @shortdoc "Generates surface template files."
  @moduledoc """
    Generates `Boxicon` at `lib/boxicon.ex`, a surface component in charge
    of rendering all the icons read at `priv/downloads/{version}`.
  """
  use Mix.Task

  @impl Mix.Task
  def run(_) do
    types = ["logos", "regular", "solid"]
    base_source_dir = Path.join([File.cwd!(), "priv", "downloads", "2.0.9"])

    functions_src =
      Enum.reduce(types, [], fn type, type_acc ->
        source_dir = Path.join([base_source_dir, type, "*.svg"])

        type_functions =
          Enum.reduce(Path.wildcard(source_dir), [], fn file_path, name_acc ->
            file_content = File.read!(file_path)
            name = get_name_attr(file_path)

            icon_content =
              file_content
              |> String.replace(~s(width="24"), ~S(width={"#{@size}"}))
              |> String.replace(~s(height="24"), ~S(height={"#{@size}"} class={"#{@class}"}))

            icon_func = """
              def render(%{name: "#{name}", type: "#{type}"} = assigns) do
                ~F[#{icon_content}]
              end
            """

            [icon_func | name_acc]
          end)

        type_acc ++ Enum.reverse(type_functions)
      end)

    module_code = """
    defmodule Boxicon do
      @moduledoc "\""
        Boxicon is surface component library that wraps the amazing boxicons library.

        Usage:

            defmodule MyComponent do
              use Surface.Component

              @impl true
              def render(assigns) do
                ~F"\\""
                  <Boxicon
                    name="calendar"
                    type="regular"
                    size="64"
                    class="icon green"
                  />
                "\\""
              end
            end


        To get a full list of all the available icons, go to https://boxicons.com/
      "\""

      use Surface.Component

      @doc "Type of the icon"
      prop type, :string, values!: ["solid", "regular", "logos"]

      @doc "Name of the icon"
      prop name, :string, required: true

      @doc "Width & height of the icon"
      prop size, :integer, default: 24

      @doc "CSS classes for the wrapping svg element"
      prop class, :string, default: "icon"

      #{Enum.join(functions_src, "\n")}
    end
    """

    module_path = Path.join([File.cwd!(), "lib", "boxicon.ex"])
    File.write!(module_path, module_code)
  end

  defp get_name_attr(file_path) do
    name =
      file_path
      |> Path.basename()
      |> String.split(".")
      |> List.first()
      |> String.split("-")
      |> List.pop_at(0)
      |> elem(1)
      |> Enum.join("-")

    name
  end
end
