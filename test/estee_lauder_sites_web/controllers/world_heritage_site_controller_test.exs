defmodule EsteeLauderSitesWeb.WorldHeritageSiteControllerTest do
  use EsteeLauderSitesWeb.ConnCase

  import EsteeLauderSites.SitesFixtures

  setup %{conn: conn} do
    {:ok, conn: put_req_header(conn, "accept", "application/json")}
  end

  describe "index" do
    test "paginates all world_heritage_sites", %{conn: conn} do
      world_heritage_site_fixture()
      world_heritage_site_fixture()
      world_heritage_site_fixture()

      conn = get(conn, ~p"/api/world_heritage_sites?page=1")
      assert length(json_response(conn, 200)["data"]) == 3

      conn = get(conn, ~p"/api/world_heritage_sites?page=2")
      assert Enum.empty?(json_response(conn, 200)["data"])
    end
  end

  describe "show" do
    test "returns a world_heritage_site", %{conn: conn} do
      world_heritage_site = world_heritage_site_fixture()
      conn = get(conn, ~p"/api/world_heritage_sites/#{world_heritage_site.id}")
      assert json_response(conn, 200)["data"]["id_no"] == 42
    end

    test "returns a world_heritage_site with AR locale info", %{conn: conn} do
      world_heritage_site = world_heritage_site_fixture()
      conn = get(conn, ~p"/api/world_heritage_sites/#{world_heritage_site.id}?locale=ar")
      assert json_response(conn, 200)["data"]["name_ar"] == "some name_ar"
    end

    test "returns a world_heritage_site with EN locale info", %{conn: conn} do
      world_heritage_site = world_heritage_site_fixture()
      conn = get(conn, ~p"/api/world_heritage_sites/#{world_heritage_site.id}?locale=en")
      assert json_response(conn, 200)["data"]["name_en"] == "some name_en"
    end

    test "returns a world_heritage_site with ES locale info", %{conn: conn} do
      world_heritage_site = world_heritage_site_fixture()
      conn = get(conn, ~p"/api/world_heritage_sites/#{world_heritage_site.id}?locale=es")
      assert json_response(conn, 200)["data"]["name_es"] == "some name_es"
    end

    test "returns a world_heritage_site with FR locale info", %{conn: conn} do
      world_heritage_site = world_heritage_site_fixture()
      conn = get(conn, ~p"/api/world_heritage_sites/#{world_heritage_site.id}?locale=fr")
      assert json_response(conn, 200)["data"]["name_fr"] == "some name_fr"
    end

    test "returns a world_heritage_site with RU locale info", %{conn: conn} do
      world_heritage_site = world_heritage_site_fixture()
      conn = get(conn, ~p"/api/world_heritage_sites/#{world_heritage_site.id}?locale=ru")
      assert json_response(conn, 200)["data"]["name_ru"] == "some name_ru"
    end

    test "returns a world_heritage_site with ZH locale info", %{conn: conn} do
      world_heritage_site = world_heritage_site_fixture()
      conn = get(conn, ~p"/api/world_heritage_sites/#{world_heritage_site.id}?locale=zh")
      assert json_response(conn, 200)["data"]["name_zh"] == "some name_zh"
    end
  end

  describe "map" do
    test "returns all world_heritage_sites for maps", %{conn: conn} do
      world_heritage_site_fixture()
      world_heritage_site_fixture()
      world_heritage_site_fixture(%{latitude: nil, longitude: nil})

      conn = get(conn, ~p"/api/world_heritage_sites/map")
      assert length(json_response(conn, 200)["data"]) == 2
    end
  end
end
