defmodule EsteeLauderSitesWeb.WorldHeritageSiteControllerTest do
  use EsteeLauderSitesWeb.ConnCase

  import EsteeLauderSites.SitesFixtures

  alias EsteeLauderSites.Sites.WorldHeritageSite

  @create_attrs %{
    states_name_es: "some states_name_es",
    short_description_en: "some short_description_en",
    justification_en: "some justification_en",
    states_name_ru: "some states_name_ru",
    short_description_es: "some short_description_es",
    latitude: 120.5,
    c3: 42,
    name_ru: "some name_ru",
    name_es: "some name_es",
    c6: 42,
    udnp_code: "some udnp_code",
    criteria_txt: "some criteria_txt",
    short_description_fr: "some short_description_fr",
    name_fr: "some name_fr",
    category: "some category",
    n8: 42,
    area_hectares: 120.5,
    short_description_zh: "some short_description_zh",
    name_zh: "some name_zh",
    name_en: "some name_en",
    transboundary: 42,
    danger_list: "some danger_list",
    name_ar: "some name_ar",
    date_inscribed: 42,
    id_no: 42,
    longitude: 120.5,
    c4: 42,
    secondary_dates: "some secondary_dates",
    region_fr: "some region_fr",
    states_name_zh: "some states_name_zh",
    date_end: 120.5,
    n9: 42,
    region_en: "some region_en",
    danger: 42,
    short_description_ru: "some short_description_ru",
    short_description_ar: "some short_description_ar",
    states_name_fr: "some states_name_fr",
    states_name_ar: "some states_name_ar",
    justification_fr: "some justification_fr",
    c1: 42,
    category_short: "some category_short",
    n7: 42,
    c2: 42,
    states_name_en: "some states_name_en",
    c5: 42,
    rev_bis: "some rev_bis",
    unique_number: 42,
    n10: 42,
    iso_code: "some iso_code"
  }
  @update_attrs %{
    states_name_es: "some updated states_name_es",
    short_description_en: "some updated short_description_en",
    justification_en: "some updated justification_en",
    states_name_ru: "some updated states_name_ru",
    short_description_es: "some updated short_description_es",
    latitude: 456.7,
    c3: 43,
    name_ru: "some updated name_ru",
    name_es: "some updated name_es",
    c6: 43,
    udnp_code: "some updated udnp_code",
    criteria_txt: "some updated criteria_txt",
    short_description_fr: "some updated short_description_fr",
    name_fr: "some updated name_fr",
    category: "some updated category",
    n8: 43,
    area_hectares: 456.7,
    short_description_zh: "some updated short_description_zh",
    name_zh: "some updated name_zh",
    name_en: "some updated name_en",
    transboundary: 43,
    danger_list: "some updated danger_list",
    name_ar: "some updated name_ar",
    date_inscribed: 43,
    id_no: 43,
    longitude: 456.7,
    c4: 43,
    secondary_dates: "some updated secondary_dates",
    region_fr: "some updated region_fr",
    states_name_zh: "some updated states_name_zh",
    date_end: 456.7,
    n9: 43,
    region_en: "some updated region_en",
    danger: 43,
    short_description_ru: "some updated short_description_ru",
    short_description_ar: "some updated short_description_ar",
    states_name_fr: "some updated states_name_fr",
    states_name_ar: "some updated states_name_ar",
    justification_fr: "some updated justification_fr",
    c1: 43,
    category_short: "some updated category_short",
    n7: 43,
    c2: 43,
    states_name_en: "some updated states_name_en",
    c5: 43,
    rev_bis: "some updated rev_bis",
    unique_number: 43,
    n10: 43,
    iso_code: "some updated iso_code"
  }
  @invalid_attrs %{iso_code: nil, n10: nil, unique_number: nil, rev_bis: nil, c5: nil, states_name_en: nil, c2: nil, n7: nil, category_short: nil, c1: nil, justification_fr: nil, states_name_ar: nil, states_name_fr: nil, short_description_ar: nil, short_description_ru: nil, danger: nil, region_en: nil, n9: nil, date_end: nil, states_name_zh: nil, region_fr: nil, secondary_dates: nil, c4: nil, longitude: nil, id_no: nil, date_inscribed: nil, name_ar: nil, danger_list: nil, transboundary: nil, name_en: nil, name_zh: nil, short_description_zh: nil, area_hectares: nil, n8: nil, category: nil, name_fr: nil, short_description_fr: nil, criteria_txt: nil, udnp_code: nil, c6: nil, name_es: nil, name_ru: nil, c3: nil, latitude: nil, short_description_es: nil, states_name_ru: nil, justification_en: nil, short_description_en: nil, states_name_es: nil}

  setup %{conn: conn} do
    {:ok, conn: put_req_header(conn, "accept", "application/json")}
  end

  describe "index" do
    test "lists all world_heritage_sites", %{conn: conn} do
      conn = get(conn, ~p"/api/world_heritage_sites")
      assert json_response(conn, 200)["data"] == []
    end
  end

  describe "create world_heritage_site" do
    test "renders world_heritage_site when data is valid", %{conn: conn} do
      conn = post(conn, ~p"/api/world_heritage_sites", world_heritage_site: @create_attrs)
      assert %{"id" => id} = json_response(conn, 201)["data"]

      conn = get(conn, ~p"/api/world_heritage_sites/#{id}")

      assert %{
               "id" => ^id,
               "danger_list" => "some danger_list",
               "udnp_code" => "some udnp_code",
               "name_en" => "some name_en",
               "id_no" => 42,
               "states_name_zh" => "some states_name_zh",
               "states_name_ru" => "some states_name_ru",
               "region_fr" => "some region_fr",
               "justification_en" => "some justification_en",
               "n10" => 42,
               "n9" => 42,
               "rev_bis" => "some rev_bis",
               "c1" => 42,
               "c4" => 42,
               "criteria_txt" => "some criteria_txt",
               "states_name_fr" => "some states_name_fr",
               "secondary_dates" => "some secondary_dates",
               "longitude" => 120.5,
               "short_description_fr" => "some short_description_fr",
               "short_description_es" => "some short_description_es",
               "states_name_ar" => "some states_name_ar",
               "name_ru" => "some name_ru",
               "category_short" => "some category_short",
               "region_en" => "some region_en",
               "justification_fr" => "some justification_fr",
               "short_description_en" => "some short_description_en",
               "n7" => 42,
               "date_inscribed" => 42,
               "name_fr" => "some name_fr",
               "transboundary" => 42,
               "short_description_zh" => "some short_description_zh",
               "states_name_es" => "some states_name_es",
               "date_end" => 120.5,
               "name_es" => "some name_es",
               "latitude" => 120.5,
               "area_hectares" => 120.5,
               "danger" => 42,
               "states_name_en" => "some states_name_en",
               "c6" => 42,
               "c5" => 42,
               "short_description_ru" => "some short_description_ru",
               "name_ar" => "some name_ar",
               "category" => "some category",
               "n8" => 42,
               "c3" => 42,
               "iso_code" => "some iso_code",
               "c2" => 42,
               "name_zh" => "some name_zh",
               "unique_number" => 42,
               "short_description_ar" => "some short_description_ar"
             } = json_response(conn, 200)["data"]
    end

    test "renders errors when data is invalid", %{conn: conn} do
      conn = post(conn, ~p"/api/world_heritage_sites", world_heritage_site: @invalid_attrs)
      assert json_response(conn, 422)["errors"] != %{}
    end
  end

  describe "update world_heritage_site" do
    setup [:create_world_heritage_site]

    test "renders world_heritage_site when data is valid", %{conn: conn, world_heritage_site: %WorldHeritageSite{id: id} = world_heritage_site} do
      conn = put(conn, ~p"/api/world_heritage_sites/#{world_heritage_site}", world_heritage_site: @update_attrs)
      assert %{"id" => ^id} = json_response(conn, 200)["data"]

      conn = get(conn, ~p"/api/world_heritage_sites/#{id}")

      assert %{
               "id" => ^id,
               "danger_list" => "some updated danger_list",
               "udnp_code" => "some updated udnp_code",
               "name_en" => "some updated name_en",
               "id_no" => 43,
               "states_name_zh" => "some updated states_name_zh",
               "states_name_ru" => "some updated states_name_ru",
               "region_fr" => "some updated region_fr",
               "justification_en" => "some updated justification_en",
               "n10" => 43,
               "n9" => 43,
               "rev_bis" => "some updated rev_bis",
               "c1" => 43,
               "c4" => 43,
               "criteria_txt" => "some updated criteria_txt",
               "states_name_fr" => "some updated states_name_fr",
               "secondary_dates" => "some updated secondary_dates",
               "longitude" => 456.7,
               "short_description_fr" => "some updated short_description_fr",
               "short_description_es" => "some updated short_description_es",
               "states_name_ar" => "some updated states_name_ar",
               "name_ru" => "some updated name_ru",
               "category_short" => "some updated category_short",
               "region_en" => "some updated region_en",
               "justification_fr" => "some updated justification_fr",
               "short_description_en" => "some updated short_description_en",
               "n7" => 43,
               "date_inscribed" => 43,
               "name_fr" => "some updated name_fr",
               "transboundary" => 43,
               "short_description_zh" => "some updated short_description_zh",
               "states_name_es" => "some updated states_name_es",
               "date_end" => 456.7,
               "name_es" => "some updated name_es",
               "latitude" => 456.7,
               "area_hectares" => 456.7,
               "danger" => 43,
               "states_name_en" => "some updated states_name_en",
               "c6" => 43,
               "c5" => 43,
               "short_description_ru" => "some updated short_description_ru",
               "name_ar" => "some updated name_ar",
               "category" => "some updated category",
               "n8" => 43,
               "c3" => 43,
               "iso_code" => "some updated iso_code",
               "c2" => 43,
               "name_zh" => "some updated name_zh",
               "unique_number" => 43,
               "short_description_ar" => "some updated short_description_ar"
             } = json_response(conn, 200)["data"]
    end

    test "renders errors when data is invalid", %{conn: conn, world_heritage_site: world_heritage_site} do
      conn = put(conn, ~p"/api/world_heritage_sites/#{world_heritage_site}", world_heritage_site: @invalid_attrs)
      assert json_response(conn, 422)["errors"] != %{}
    end
  end

  describe "delete world_heritage_site" do
    setup [:create_world_heritage_site]

    test "deletes chosen world_heritage_site", %{conn: conn, world_heritage_site: world_heritage_site} do
      conn = delete(conn, ~p"/api/world_heritage_sites/#{world_heritage_site}")
      assert response(conn, 204)

      assert_error_sent 404, fn ->
        get(conn, ~p"/api/world_heritage_sites/#{world_heritage_site}")
      end
    end
  end

  defp create_world_heritage_site(_) do
    world_heritage_site = world_heritage_site_fixture()
    %{world_heritage_site: world_heritage_site}
  end
end
