defmodule EsteeLauderSitesWeb.WorldHeritageSiteController do
  use EsteeLauderSitesWeb, :controller

  alias EsteeLauderSites.Sites
  alias EsteeLauderSites.Sites.WorldHeritageSite

  action_fallback EsteeLauderSitesWeb.FallbackController

  def index(conn, _params) do
    world_heritage_sites = Sites.list_world_heritage_sites()
    render(conn, :index, world_heritage_sites: world_heritage_sites)
  end

  def create(conn, %{"world_heritage_site" => world_heritage_site_params}) do
    with {:ok, %WorldHeritageSite{} = world_heritage_site} <- Sites.create_world_heritage_site(world_heritage_site_params) do
      conn
      |> put_status(:created)
      |> put_resp_header("location", ~p"/api/world_heritage_sites/#{world_heritage_site}")
      |> render(:show, world_heritage_site: world_heritage_site)
    end
  end

  def show(conn, %{"id" => id}) do
    world_heritage_site = Sites.get_world_heritage_site!(id)
    render(conn, :show, world_heritage_site: world_heritage_site)
  end

  def update(conn, %{"id" => id, "world_heritage_site" => world_heritage_site_params}) do
    world_heritage_site = Sites.get_world_heritage_site!(id)

    with {:ok, %WorldHeritageSite{} = world_heritage_site} <- Sites.update_world_heritage_site(world_heritage_site, world_heritage_site_params) do
      render(conn, :show, world_heritage_site: world_heritage_site)
    end
  end

  def delete(conn, %{"id" => id}) do
    world_heritage_site = Sites.get_world_heritage_site!(id)

    with {:ok, %WorldHeritageSite{}} <- Sites.delete_world_heritage_site(world_heritage_site) do
      send_resp(conn, :no_content, "")
    end
  end
end
