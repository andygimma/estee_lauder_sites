defmodule EsteeLauderSitesWeb.WorldHeritageSiteController do
  use EsteeLauderSitesWeb, :controller

  alias EsteeLauderSites.Sites

  action_fallback EsteeLauderSitesWeb.FallbackController

  def index(conn, _params) do
    world_heritage_sites = Sites.list_world_heritage_sites()
    render(conn, :index, world_heritage_sites: world_heritage_sites)
  end

  def show(conn, %{"id" => id}) do
    world_heritage_site = Sites.get_world_heritage_site!(id)
    render(conn, :show, world_heritage_site: world_heritage_site)
  end
end
