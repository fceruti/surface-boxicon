defmodule BoxiconTest do
  use ExUnit.Case
  use Surface.LiveViewTest

  # The default endpoint for testing
  @endpoint Endpoint

  test "" do
    html =
      render_surface do
        ~F"""
          <Boxicon
            type="regular"
            name="calendar"
            size="24"
            class="icon"
          />

        """
      end

    assert String.contains?(html, "M7 11h2v2H7zm0 4h2v2H7zm4-4h2v2h-2zm0")
    assert String.contains?(html, "class=\"")
    assert String.contains?(html, "height=\"")
    assert String.contains?(html, "width=\"")
    assert String.contains?(html, "<svg")
    assert String.contains?(html, "</svg>")
  end
end
