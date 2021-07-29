defmodule Boxicon.Source do
  @moduledoc """
  Utility module to help populate `Boxicon`.
  """

  @version "2.0.9"

  defstruct [:type, :name, :content, :file_path]

  @spec get_icons() :: [%__MODULE__{}]
  def get_icons() do
    config = Application.get_env(:boxicon, :icons, :all)
    get_icons(config)
  end

  def get_icons(:all) do
    config = [regular: :all, solid: :all, logos: :all]
    get_icons(config)
  end

  def get_icons(config) do
    validated_config =
      Enum.reduce([:regular, :solid, :logos], [], fn type, acc ->
        case Keyword.get(config, type) do
          nil -> acc
          type_config -> [{type, type_config}] ++ acc
        end
      end)

    Enum.reduce(validated_config, [], fn {type, icon_names}, acc ->
      get_type_icons(type, icon_names) ++ acc
    end)
  end

  defp get_type_icons(type, icon_names) do
    sources =
      case icon_names do
        nil ->
          []

        :all ->
          Path.join([File.cwd!(), "priv/downloads/#{@version}/#{type}", "*.svg"])
          |> Path.wildcard()
          |> Enum.map(fn file_path ->
            %__MODULE__{type: type, name: get_name_from_path(file_path), file_path: file_path}
          end)

        _list ->
          icon_names
          |> Enum.map(fn icon_name ->
            file_path =
              Path.join([
                File.cwd!(),
                "priv/downloads/#{@version}/#{type}",
                get_filename(type, icon_name)
              ])

            %__MODULE__{type: type, name: icon_name, file_path: file_path}
          end)
      end

    Enum.map(sources, &populate_source/1)
  end

  defp populate_source(%__MODULE__{} = source) do
    file_content = File.read!(source.file_path)
    [_, content] = Regex.run(~r"<svg[^>]*>(.+?)</svg>", file_content)
    %__MODULE__{source | content: content}
  end

  defp get_filename(type, icon_name) do
    prefix =
      case type do
        :logos -> "bxl"
        :solid -> "bxs"
        :regular -> "bx"
      end

    "#{prefix}-#{icon_name}.svg"
  end

  defp get_name_from_path(file_path) do
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
