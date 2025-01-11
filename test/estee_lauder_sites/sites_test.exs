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

    test "change_world_heritage_site/1 returns a world_heritage_site changeset" do
      world_heritage_site = world_heritage_site_fixture()
      assert %Ecto.Changeset{} = Sites.change_world_heritage_site(world_heritage_site)
    end
  end
end
