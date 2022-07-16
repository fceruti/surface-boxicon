defmodule Boxicon.Generate do
  @moduledoc "Convert source SVG files into Surface components. Runs automatically upon compilation."

  @config Application.get_env(:surface_boxicon, :icons, :all)

  def generate() do
    dest_path = "./lib/boxicon/"
    namespace = "Boxicon."

    Boxicon.Source.get_icons(@config)
    |> Enum.each(&create_component(&1.type, dest_path, namespace, &1.name, &1.content))
  end

  defp create_component(type, dest_path, namespace, filename, svg_content) do
    dest_path = "#{dest_path}/#{type}/"

    component_filepath = Path.join(dest_path, component_filename(filename))

    if not File.exists?(component_filepath) do
      namespace = "#{namespace}#{String.capitalize(to_string(type))}."
      docs = "#{type}/#{filename}"

      svg_content = "<svg xmlns=\"http://www.w3.org/2000/svg\" class={@class} fill={@fill} stroke={@stroke} width={@size} height={@size} viewBox=\"0 0 24 24\" aria-hidden=\"true\">#{svg_content}</svg>"

      component_content =
        (namespace <> module_name(filename)) |> build_component(docs, svg_content, type)

      File.mkdir_p(dest_path)
      File.write!(component_filepath, component_content)
    end
  end

  defp component_filename(current_filename) do
    current_filename
    |> String.split("-")
    |> Enum.join("_")
    |> Path.basename(".svg")
    |> Kernel.<>(".ex")
  end

  defp module_name(current_filename) do
    current_filename
    |> Path.basename(".svg")
    |> String.split("-")
    |> Enum.map(&String.capitalize/1)
    |> Enum.join("")
    |> module_sanitise()
  end

  defp module_sanitise(str) do
    if is_numeric(String.at(str,0)) do
      "X" <> str
    else
      str
    end
  end

  defp is_numeric(str) do
    case Float.parse(str) do
      {_num, ""} -> true
      _ -> false
    end
  end

  defp build_component(module_name, docs, svg, :regular) do
    build_component_code(module_name, docs, svg, "currentColor", nil)
  end

  defp build_component(module_name, docs, svg, :solid) do
    build_component_code(module_name, docs, svg, "currentColor", nil)
  end

  defp build_component(module_name, docs, svg, _) do
    build_component_code(module_name, docs, svg, "currentColor", nil)
  end

  defp build_component_code(module_name, docs, svg, fill, stroke) do
    # hint: the import makes sure icons are generated before icon modules are compiled
    """
    defmodule #{module_name} do
      @moduledoc "#{docs}"
      use Surface.Component
      import Boxicon

      @doc "css class"
      prop class, :css_class, default: "w-5 h-5"

      @doc "svg fill (default: #{fill})"
      prop fill, :string, default: "#{fill}"

      @doc "svg stroke (default: #{stroke})"
      prop stroke, :string, default: "#{stroke}"

      @doc "Width & height of the icon (default: 100%)"
      prop size, :string, default: "100%"

      def render(assigns) do
        ~F\"\"\"
        #{svg}
        \"\"\"
      end
    end
    """
  end

end
