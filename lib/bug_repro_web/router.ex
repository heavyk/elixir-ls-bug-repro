defmodule BugReproWeb.Router do
  use BugReproWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", BugReproWeb do
    pipe_through :api
  end
end
