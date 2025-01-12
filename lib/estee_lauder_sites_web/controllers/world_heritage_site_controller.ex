defmodule EsteeLauderSitesWeb.WorldHeritageSiteController do
  use EsteeLauderSitesWeb, :controller

  alias EsteeLauderSites.Sites

  action_fallback EsteeLauderSitesWeb.FallbackController

  def index(conn, %{"page" => page}) do
    world_heritage_sites = page |> String.to_integer() |> Sites.paginate_world_heritage_sites()
    render(conn, :index, world_heritage_sites: world_heritage_sites)
  end

  def show(conn, %{"id" => id, "locale" => locale}) do
    world_heritage_site_by_locale = Sites.get_world_heritage_site!(id, locale)

    render(conn, :show_by_locale,
      world_heritage_site_by_locale: world_heritage_site_by_locale,
      locale: locale
    )
  end

  def show(conn, %{"id" => id}) do
    world_heritage_site = Sites.get_world_heritage_site!(id)
    render(conn, :show, world_heritage_site: world_heritage_site)
  end

  def map(conn, _params) do
    world_heritage_sites = Sites.list_world_heritage_sites_for_maps()
    render(conn, :map, world_heritage_sites: world_heritage_sites)
  end

end
