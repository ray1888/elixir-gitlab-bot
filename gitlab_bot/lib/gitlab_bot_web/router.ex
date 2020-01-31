defmodule GitlabBotWeb.Router do
  use GitlabBotWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    ### TODO fix csrf token problem
    # plug :protect_from_forgery
    # plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", GitlabBotWeb do
    pipe_through :api

    get "/", PageController, :index
    post "/gitlab-push", GitlabController, :convey
  end

  # Other scopes may use custom stacks.
  # scope "/api", GitlabBotWeb do
  #   pipe_through :api
  # end
end
