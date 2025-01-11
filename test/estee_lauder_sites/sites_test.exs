defmodule EsteeLauderSites.SitesTest do
  use EsteeLauderSites.DataCase

  alias EsteeLauderSites.Sites

  describe "world_heritage_sites" do
    import EsteeLauderSites.SitesFixtures

    test "list_world_heritage_sites/0 returns all world_heritage_sites" do
      world_heritage_site = world_heritage_site_fixture()
      assert Sites.list_world_heritage_sites() == [world_heritage_site]
    end

    test "get_world_heritage_site!/1 returns the world_heritage_site with given id" do
      world_heritage_site = world_heritage_site_fixture()
      assert Sites.get_world_heritage_site!(world_heritage_site.id) == world_heritage_site
    end

    test "get_world_heritage_site!/2 returns the world_heritage_site with given id and AR locale info" do
      world_heritage_site = world_heritage_site_fixture()
      assert Sites.get_world_heritage_site!(world_heritage_site.id, "ar").name_ar != nil
      assert Map.get(Sites.get_world_heritage_site!(world_heritage_site.id, "ar"), :name_en, nil) == nil
    end

    test "get_world_heritage_site!/2 returns the world_heritage_site with given id and EN locale info" do
      world_heritage_site = world_heritage_site_fixture()
      assert Sites.get_world_heritage_site!(world_heritage_site.id, "en").name_en != nil
      assert Map.get(Sites.get_world_heritage_site!(world_heritage_site.id, "en"), :name_ar, nil) == nil
    end

    test "get_world_heritage_site!/2 returns the world_heritage_site with given id and ES locale info" do
      world_heritage_site = world_heritage_site_fixture()
      assert Sites.get_world_heritage_site!(world_heritage_site.id, "es").name_es != nil
      assert Map.get(Sites.get_world_heritage_site!(world_heritage_site.id, "es"), :name_ar, nil) == nil
    end

    test "get_world_heritage_site!/2 returns the world_heritage_site with given id and FR locale info" do
      world_heritage_site = world_heritage_site_fixture()
      assert Sites.get_world_heritage_site!(world_heritage_site.id, "fr").name_fr != nil
      assert Map.get(Sites.get_world_heritage_site!(world_heritage_site.id, "fr"), :name_ar, nil) == nil
    end

    test "get_world_heritage_site!/2 returns the world_heritage_site with given id and RU locale info" do
      world_heritage_site = world_heritage_site_fixture()
      assert Sites.get_world_heritage_site!(world_heritage_site.id, "ru").name_ru != nil
      assert Map.get(Sites.get_world_heritage_site!(world_heritage_site.id, "ru"), :name_ar, nil) == nil
    end

    test "get_world_heritage_site!/2 returns the world_heritage_site with given id and ZH locale info" do
      world_heritage_site = world_heritage_site_fixture()
      assert Sites.get_world_heritage_site!(world_heritage_site.id, "zh").name_zh != nil
      assert Map.get(Sites.get_world_heritage_site!(world_heritage_site.id, "zh"), :name_ar, nil) == nil
    end

    test "change_world_heritage_site/1 returns a world_heritage_site changeset" do
      world_heritage_site = world_heritage_site_fixture()
      assert %Ecto.Changeset{} = Sites.change_world_heritage_site(world_heritage_site)
    end
  end
end
