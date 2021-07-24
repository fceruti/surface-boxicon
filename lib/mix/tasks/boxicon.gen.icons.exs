defmodule Mix.Tasks.Boxicon.Gen.Icons do
  @moduledoc """
    Generates Picasso's migrations to host project.

      mix picasso.gen.migration
  """
  use Mix.Task

  def run(args) do
    IO.inspect(args)

    # Copy originals migrations
    # tmpl_originals =
    #   Path.expand(
    #     Path.join([__ENV__.file, "../../../../priv/templates/migrations", "originals.exs"])
    #   )

    # out_originals =
    #   Path.join([File.cwd!(), "priv/repo/migrations", "#{timestamp()}_create_originals.exs"])

    # File.cp(
    #   tmpl_originals,
    #   out_originals
    # )

    # # Copy renditions migrations
    # :timer.sleep(1000)

    # tmpl_renditions =
    #   Path.expand(
    #     Path.join([__ENV__.file, "../../../../priv/templates/migrations", "renditions.exs"])
    #   )

    # out_renditions =
    #   Path.join([File.cwd!(), "priv/repo/migrations", "#{timestamp()}_create_renditions.exs"])

    # File.cp(
    #   tmpl_renditions,
    #   out_renditions
    # )

    # Mix.shell().info("""
    # Picasso migrations generated at:

    # #{out_originals}
    # #{out_renditions}
    # """)
  end
end
