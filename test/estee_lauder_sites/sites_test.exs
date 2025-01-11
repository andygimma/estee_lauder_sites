defmodule EsteeLauderSites.SitesTest do
  use EsteeLauderSites.DataCase

  alias EsteeLauderSites.Sites

  describe "world_heritage_sites" do
    alias EsteeLauderSites.Sites.WorldHeritageSite

    import EsteeLauderSites.SitesFixtures

    @invalid_attrs %{iso_code: nil, n10: nil, unique_number: nil, rev_bis: nil, c5: nil, states_name_en: nil, c2: nil, n7: nil, category_short: nil, c1: nil, justification_fr: nil, states_name_ar: nil, states_name_fr: nil, short_description_ar: nil, short_description_ru: nil, danger: nil, region_en: nil, n9: nil, date_end: nil, states_name_zh: nil, region_fr: nil, secondary_dates: nil, c4: nil, longitude: nil, id_no: nil, date_inscribed: nil, name_ar: nil, danger_list: nil, transboundary: nil, name_en: nil, name_zh: nil, short_description_zh: nil, area_hectares: nil, n8: nil, category: nil, name_fr: nil, short_description_fr: nil, criteria_txt: nil, udnp_code: nil, c6: nil, name_es: nil, name_ru: nil, c3: nil, latitude: nil, short_description_es: nil, states_name_ru: nil, justification_en: nil, short_description_en: nil, states_name_es: nil}

    test "list_world_heritage_sites/0 returns all world_heritage_sites" do
      world_heritage_site = world_heritage_site_fixture()
      assert Sites.list_world_heritage_sites() == [world_heritage_site]
    end

    test "get_world_heritage_site!/1 returns the world_heritage_site with given id" do
      world_heritage_site = world_heritage_site_fixture()
      assert Sites.get_world_heritage_site!(world_heritage_site.id) == world_heritage_site
    end

    test "create_world_heritage_site/1 with valid data creates a world_heritage_site" do
      valid_attrs = %{iso_code: "some iso_code", n10: 42, unique_number: 42, rev_bis: "some rev_bis", c5: 42, states_name_en: "some states_name_en", c2: 42, n7: 42, category_short: "some category_short", c1: 42, justification_fr: "some justification_fr", states_name_ar: "some states_name_ar", states_name_fr: "some states_name_fr", short_description_ar: "some short_description_ar", short_description_ru: "some short_description_ru", danger: 42, region_en: "some region_en", n9: 42, date_end: 120.5, states_name_zh: "some states_name_zh", region_fr: "some region_fr", secondary_dates: "some secondary_dates", c4: 42, longitude: 120.5, id_no: 42, date_inscribed: 42, name_ar: "some name_ar", danger_list: "some danger_list", transboundary: 42, name_en: "some name_en", name_zh: "some name_zh", short_description_zh: "some short_description_zh", area_hectares: 120.5, n8: 42, category: "some category", name_fr: "some name_fr", short_description_fr: "some short_description_fr", criteria_txt: "some criteria_txt", udnp_code: "some udnp_code", c6: 42, name_es: "some name_es", name_ru: "some name_ru", c3: 42, latitude: 120.5, short_description_es: "some short_description_es", states_name_ru: "some states_name_ru", justification_en: "some justification_en", short_description_en: "some short_description_en", states_name_es: "some states_name_es"}

      assert {:ok, %WorldHeritageSite{} = world_heritage_site} = Sites.create_world_heritage_site(valid_attrs)
      assert world_heritage_site.states_name_es == "some states_name_es"
      assert world_heritage_site.short_description_en == "some short_description_en"
      assert world_heritage_site.justification_en == "some justification_en"
      assert world_heritage_site.states_name_ru == "some states_name_ru"
      assert world_heritage_site.short_description_es == "some short_description_es"
      assert world_heritage_site.latitude == 120.5
      assert world_heritage_site.c3 == 42
      assert world_heritage_site.name_ru == "some name_ru"
      assert world_heritage_site.name_es == "some name_es"
      assert world_heritage_site.c6 == 42
      assert world_heritage_site.udnp_code == "some udnp_code"
      assert world_heritage_site.criteria_txt == "some criteria_txt"
      assert world_heritage_site.short_description_fr == "some short_description_fr"
      assert world_heritage_site.name_fr == "some name_fr"
      assert world_heritage_site.category == "some category"
      assert world_heritage_site.n8 == 42
      assert world_heritage_site.area_hectares == 120.5
      assert world_heritage_site.short_description_zh == "some short_description_zh"
      assert world_heritage_site.name_zh == "some name_zh"
      assert world_heritage_site.name_en == "some name_en"
      assert world_heritage_site.transboundary == 42
      assert world_heritage_site.danger_list == "some danger_list"
      assert world_heritage_site.name_ar == "some name_ar"
      assert world_heritage_site.date_inscribed == 42
      assert world_heritage_site.id_no == 42
      assert world_heritage_site.longitude == 120.5
      assert world_heritage_site.c4 == 42
      assert world_heritage_site.secondary_dates == "some secondary_dates"
      assert world_heritage_site.region_fr == "some region_fr"
      assert world_heritage_site.states_name_zh == "some states_name_zh"
      assert world_heritage_site.date_end == 120.5
      assert world_heritage_site.n9 == 42
      assert world_heritage_site.region_en == "some region_en"
      assert world_heritage_site.danger == 42
      assert world_heritage_site.short_description_ru == "some short_description_ru"
      assert world_heritage_site.short_description_ar == "some short_description_ar"
      assert world_heritage_site.states_name_fr == "some states_name_fr"
      assert world_heritage_site.states_name_ar == "some states_name_ar"
      assert world_heritage_site.justification_fr == "some justification_fr"
      assert world_heritage_site.c1 == 42
      assert world_heritage_site.category_short == "some category_short"
      assert world_heritage_site.n7 == 42
      assert world_heritage_site.c2 == 42
      assert world_heritage_site.states_name_en == "some states_name_en"
      assert world_heritage_site.c5 == 42
      assert world_heritage_site.rev_bis == "some rev_bis"
      assert world_heritage_site.unique_number == 42
      assert world_heritage_site.n10 == 42
      assert world_heritage_site.iso_code == "some iso_code"
    end

    test "create_world_heritage_site/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Sites.create_world_heritage_site(@invalid_attrs)
    end

    test "update_world_heritage_site/2 with valid data updates the world_heritage_site" do
      world_heritage_site = world_heritage_site_fixture()
      update_attrs = %{iso_code: "some updated iso_code", n10: 43, unique_number: 43, rev_bis: "some updated rev_bis", c5: 43, states_name_en: "some updated states_name_en", c2: 43, n7: 43, category_short: "some updated category_short", c1: 43, justification_fr: "some updated justification_fr", states_name_ar: "some updated states_name_ar", states_name_fr: "some updated states_name_fr", short_description_ar: "some updated short_description_ar", short_description_ru: "some updated short_description_ru", danger: 43, region_en: "some updated region_en", n9: 43, date_end: 456.7, states_name_zh: "some updated states_name_zh", region_fr: "some updated region_fr", secondary_dates: "some updated secondary_dates", c4: 43, longitude: 456.7, id_no: 43, date_inscribed: 43, name_ar: "some updated name_ar", danger_list: "some updated danger_list", transboundary: 43, name_en: "some updated name_en", name_zh: "some updated name_zh", short_description_zh: "some updated short_description_zh", area_hectares: 456.7, n8: 43, category: "some updated category", name_fr: "some updated name_fr", short_description_fr: "some updated short_description_fr", criteria_txt: "some updated criteria_txt", udnp_code: "some updated udnp_code", c6: 43, name_es: "some updated name_es", name_ru: "some updated name_ru", c3: 43, latitude: 456.7, short_description_es: "some updated short_description_es", states_name_ru: "some updated states_name_ru", justification_en: "some updated justification_en", short_description_en: "some updated short_description_en", states_name_es: "some updated states_name_es"}

      assert {:ok, %WorldHeritageSite{} = world_heritage_site} = Sites.update_world_heritage_site(world_heritage_site, update_attrs)
      assert world_heritage_site.states_name_es == "some updated states_name_es"
      assert world_heritage_site.short_description_en == "some updated short_description_en"
      assert world_heritage_site.justification_en == "some updated justification_en"
      assert world_heritage_site.states_name_ru == "some updated states_name_ru"
      assert world_heritage_site.short_description_es == "some updated short_description_es"
      assert world_heritage_site.latitude == 456.7
      assert world_heritage_site.c3 == 43
      assert world_heritage_site.name_ru == "some updated name_ru"
      assert world_heritage_site.name_es == "some updated name_es"
      assert world_heritage_site.c6 == 43
      assert world_heritage_site.udnp_code == "some updated udnp_code"
      assert world_heritage_site.criteria_txt == "some updated criteria_txt"
      assert world_heritage_site.short_description_fr == "some updated short_description_fr"
      assert world_heritage_site.name_fr == "some updated name_fr"
      assert world_heritage_site.category == "some updated category"
      assert world_heritage_site.n8 == 43
      assert world_heritage_site.area_hectares == 456.7
      assert world_heritage_site.short_description_zh == "some updated short_description_zh"
      assert world_heritage_site.name_zh == "some updated name_zh"
      assert world_heritage_site.name_en == "some updated name_en"
      assert world_heritage_site.transboundary == 43
      assert world_heritage_site.danger_list == "some updated danger_list"
      assert world_heritage_site.name_ar == "some updated name_ar"
      assert world_heritage_site.date_inscribed == 43
      assert world_heritage_site.id_no == 43
      assert world_heritage_site.longitude == 456.7
      assert world_heritage_site.c4 == 43
      assert world_heritage_site.secondary_dates == "some updated secondary_dates"
      assert world_heritage_site.region_fr == "some updated region_fr"
      assert world_heritage_site.states_name_zh == "some updated states_name_zh"
      assert world_heritage_site.date_end == 456.7
      assert world_heritage_site.n9 == 43
      assert world_heritage_site.region_en == "some updated region_en"
      assert world_heritage_site.danger == 43
      assert world_heritage_site.short_description_ru == "some updated short_description_ru"
      assert world_heritage_site.short_description_ar == "some updated short_description_ar"
      assert world_heritage_site.states_name_fr == "some updated states_name_fr"
      assert world_heritage_site.states_name_ar == "some updated states_name_ar"
      assert world_heritage_site.justification_fr == "some updated justification_fr"
      assert world_heritage_site.c1 == 43
      assert world_heritage_site.category_short == "some updated category_short"
      assert world_heritage_site.n7 == 43
      assert world_heritage_site.c2 == 43
      assert world_heritage_site.states_name_en == "some updated states_name_en"
      assert world_heritage_site.c5 == 43
      assert world_heritage_site.rev_bis == "some updated rev_bis"
      assert world_heritage_site.unique_number == 43
      assert world_heritage_site.n10 == 43
      assert world_heritage_site.iso_code == "some updated iso_code"
    end

    test "update_world_heritage_site/2 with invalid data returns error changeset" do
      world_heritage_site = world_heritage_site_fixture()
      assert {:error, %Ecto.Changeset{}} = Sites.update_world_heritage_site(world_heritage_site, @invalid_attrs)
      assert world_heritage_site == Sites.get_world_heritage_site!(world_heritage_site.id)
    end

    test "delete_world_heritage_site/1 deletes the world_heritage_site" do
      world_heritage_site = world_heritage_site_fixture()
      assert {:ok, %WorldHeritageSite{}} = Sites.delete_world_heritage_site(world_heritage_site)
      assert_raise Ecto.NoResultsError, fn -> Sites.get_world_heritage_site!(world_heritage_site.id) end
    end

    test "change_world_heritage_site/1 returns a world_heritage_site changeset" do
      world_heritage_site = world_heritage_site_fixture()
      assert %Ecto.Changeset{} = Sites.change_world_heritage_site(world_heritage_site)
    end
  end
end
