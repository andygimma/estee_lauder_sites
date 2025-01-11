defmodule EsteeLauderSites.SitesFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `EsteeLauderSites.Sites` context.
  """

  @doc """
  Generate a unique world_heritage_site unique_number.
  """
  def unique_world_heritage_site_unique_number, do: System.unique_integer([:positive])

  @doc """
  Generate a world_heritage_site.
  """
  def world_heritage_site_fixture(attrs \\ %{}) do
    {:ok, world_heritage_site} =
      attrs
      |> Enum.into(%{
        area_hectares: 120.5,
        c1: 42,
        c2: 42,
        c3: 42,
        c4: 42,
        c5: 42,
        c6: 42,
        category: "some category",
        category_short: "some category_short",
        criteria_txt: "some criteria_txt",
        danger: 42,
        danger_list: "some danger_list",
        date_end: 120.5,
        date_inscribed: 42,
        id_no: 42,
        iso_code: "some iso_code",
        justification_en: "some justification_en",
        justification_fr: "some justification_fr",
        latitude: 120.5,
        longitude: 120.5,
        n10: 42,
        n7: 42,
        n8: 42,
        n9: 42,
        name_ar: "some name_ar",
        name_en: "some name_en",
        name_es: "some name_es",
        name_fr: "some name_fr",
        name_ru: "some name_ru",
        name_zh: "some name_zh",
        region_en: "some region_en",
        region_fr: "some region_fr",
        rev_bis: "some rev_bis",
        secondary_dates: "some secondary_dates",
        short_description_ar: "some short_description_ar",
        short_description_en: "some short_description_en",
        short_description_es: "some short_description_es",
        short_description_fr: "some short_description_fr",
        short_description_ru: "some short_description_ru",
        short_description_zh: "some short_description_zh",
        states_name_ar: "some states_name_ar",
        states_name_en: "some states_name_en",
        states_name_es: "some states_name_es",
        states_name_fr: "some states_name_fr",
        states_name_ru: "some states_name_ru",
        states_name_zh: "some states_name_zh",
        transboundary: 42,
        udnp_code: "some udnp_code",
        unique_number: unique_world_heritage_site_unique_number()
      })
      |> EsteeLauderSites.Sites.create_world_heritage_site()

    world_heritage_site
  end
end
