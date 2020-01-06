defmodule TwitterWeb do

  def controller do
    quote do
      use Phoenix.Controller, namespace: TwitterWeb
      import Plug.Conn
      import TwitterWeb.Router.Helpers
      import TwitterWeb.Gettext
    end
  end

  def view do
    quote do
      use Phoenix.View, root: "lib/Twitter_Web/templates",
                        namespace: TwitterWeb

      # Import convenience functions from controllers
      import Phoenix.Controller, only: [get_flash: 2, view_module: 1]

      # Use all HTML functionality (forms, tags, etc)
      use Phoenix.HTML

      import TwitterWeb.Router.Helpers
      import TwitterWeb.ErrorHelpers
      import TwitterWeb.Gettext
    end
  end

  def router do
    quote do
      use Phoenix.Router
      import Plug.Conn
      import Phoenix.Controller
    end
  end

  def channel do
    quote do
      use Phoenix.Channel
      import TwitterWeb.Gettext
    end
  end

  @doc """
  When used, dispatch to the appropriate controller/view/etc.
  """
  defmacro __using__(which) when is_atom(which) do
    apply(__MODULE__, which, [])
  end
end
