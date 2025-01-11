defmodule EsteeLauderSitesWeb.WorldHeritageSiteControllerTest do
  use EsteeLauderSitesWeb.ConnCase

  import EsteeLauderSites.SitesFixtures

  setup %{conn: conn} do
    {:ok, conn: put_req_header(conn, "accept", "application/json")}
  end

  describe "index" do
    test "lists all world_heritage_sites", %{conn: conn} do
      conn = get(conn, ~p"/api/world_heritage_sites")
      assert json_response(conn, 200)["data"] == []
    end
  end

  describe "show" do
    test "returns a world_heritage_site", %{conn: conn} do
      world_heritage_site = world_heritage_site_fixture()
      conn = get(conn, ~p"/api/world_heritage_sites/#{world_heritage_site.id}")
      assert json_response(conn, 200)["data"]["id_no"] == 42
    end
  end
end
