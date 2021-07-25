defmodule Mix.Tasks.Boxicon.Gen.Icons do
  @shortdoc "Generates surface template files."
  @moduledoc """
    Generates Surface components from raw svg files in
    `priv/downloads` directory and stores them in `lib/icons` directory.
  """
  use Mix.Task

  @impl Mix.Task
  def run(_) do
    types = ["logos", "regular", "solid"]
    base_source_dir = Path.join([File.cwd!(), "priv", "downloads", "2.0.9"])
    base_target_dir = Path.join([File.cwd!(), "lib", "icons"])

    for type <- types do
      source_dir = Path.join([base_source_dir, type, "*.svg"])

      for file_path <- Path.wildcard(source_dir) do
        file_content = File.read!(file_path)

        name_parts =
          file_path
          |> Path.basename()
          |> String.split(".")
          |> List.first()
          |> String.split("-")
          |> List.pop_at(0)
          |> elem(1)

        module =
          name_parts
          |> List.insert_at(0, type)
          |> Enum.map(&String.capitalize/1)
          |> Enum.join("")

        render_content =
          file_content
          |> String.replace(
            ~s(width="24"),
            ~S(width={"#{@size}"})
          )
          |> String.replace(
            ~s(height="24"),
            ~S(height={"#{@size}"})
          )

        component = """
        defmodule Boxicon.#{module} do
          use Surface.Component

          @doc "Name as described in https://boxicons.com/"
          prop name, :string, required: true

          @doc "Width & height of the icon"
          prop size, :integer, default: 24

          @doc "CSS classes for the wrapping svg element"
          prop class, :string, default: ""

          @impl true
          def render(assigns) do
            ~F"\""
              #{render_content}
            "\""
          end

        end
        """

        component_filename = name_parts |> Enum.join("_")
        component_path = Path.join([base_target_dir, "#{type}_#{component_filename}.ex"])
        File.write!(component_path, component)
      end
    end
  end
end
