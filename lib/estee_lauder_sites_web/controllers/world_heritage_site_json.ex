defmodule EsteeLauderSitesWeb.WorldHeritageSiteJSON do
  alias EsteeLauderSites.Sites.WorldHeritageSite

  @doc """
  Renders a list of world_heritage_sites.
  """
  def index(%{world_heritage_sites: world_heritage_sites}) do
    %{data: for(world_heritage_site <- world_heritage_sites, do: data(world_heritage_site))}
  end

  @doc """
  Renders a single world_heritage_site.
  """
  def show(%{world_heritage_site: world_heritage_site}) do
    %{data: data(world_heritage_site)}
  end

  @doc """
  Renders a list of world_heritage_sites suitable for mapping. Includes only a few fields, including latitude and longitude.
  """
  def map(%{world_heritage_sites: world_heritage_sites}) do
    %{
      data:
        for(world_heritage_site <- world_heritage_sites, do: data_for_maps(world_heritage_site))
    }
  end

  @doc """
  Renders a single world_heritage_site by locale.
  """
  def show_by_locale(%{
        world_heritage_site_by_locale: world_heritage_site_by_locale,
        locale: locale
      }) do
    %{data: data_by_locale(world_heritage_site_by_locale, locale)}
  end

  defp data_by_locale(world_heritage_site, "ar") do
    %{
      id: world_heritage_site.id,
      unique_number: world_heritage_site.unique_number,
      id_no: world_heritage_site.id_no,
      rev_bis: world_heritage_site.rev_bis,
      name_ar: world_heritage_site.name_ar,
      short_description_ar: world_heritage_site.short_description_ar,
      date_inscribed: world_heritage_site.date_inscribed,
      secondary_dates: world_heritage_site.secondary_dates,
      danger: world_heritage_site.danger,
      date_end: world_heritage_site.date_end,
      danger_list: world_heritage_site.danger_list,
      longitude: world_heritage_site.longitude,
      latitude: world_heritage_site.latitude,
      area_hectares: world_heritage_site.area_hectares,
      c1: world_heritage_site.c1,
      c2: world_heritage_site.c2,
      c3: world_heritage_site.c3,
      c4: world_heritage_site.c4,
      c5: world_heritage_site.c5,
      c6: world_heritage_site.c6,
      n7: world_heritage_site.n7,
      n8: world_heritage_site.n8,
      n9: world_heritage_site.n9,
      n10: world_heritage_site.n10,
      criteria_txt: world_heritage_site.criteria_txt,
      category: world_heritage_site.category,
      category_short: world_heritage_site.category_short,
      states_name_ar: world_heritage_site.states_name_ar,
      iso_code: world_heritage_site.iso_code,
      udnp_code: world_heritage_site.udnp_code,
      transboundary: world_heritage_site.transboundary
    }
  end

  defp data_by_locale(world_heritage_site, "en") do
    %{
      id: world_heritage_site.id,
      unique_number: world_heritage_site.unique_number,
      id_no: world_heritage_site.id_no,
      rev_bis: world_heritage_site.rev_bis,
      name_en: world_heritage_site.name_en,
      short_description_en: world_heritage_site.short_description_en,
      justification_en: world_heritage_site.justification_en,
      date_inscribed: world_heritage_site.date_inscribed,
      secondary_dates: world_heritage_site.secondary_dates,
      danger: world_heritage_site.danger,
      date_end: world_heritage_site.date_end,
      danger_list: world_heritage_site.danger_list,
      longitude: world_heritage_site.longitude,
      latitude: world_heritage_site.latitude,
      area_hectares: world_heritage_site.area_hectares,
      c1: world_heritage_site.c1,
      c2: world_heritage_site.c2,
      c3: world_heritage_site.c3,
      c4: world_heritage_site.c4,
      c5: world_heritage_site.c5,
      c6: world_heritage_site.c6,
      n7: world_heritage_site.n7,
      n8: world_heritage_site.n8,
      n9: world_heritage_site.n9,
      n10: world_heritage_site.n10,
      criteria_txt: world_heritage_site.criteria_txt,
      category: world_heritage_site.category,
      category_short: world_heritage_site.category_short,
      states_name_en: world_heritage_site.states_name_en,
      region_en: world_heritage_site.region_en,
      iso_code: world_heritage_site.iso_code,
      udnp_code: world_heritage_site.udnp_code,
      transboundary: world_heritage_site.transboundary
    }
  end

  defp data_by_locale(world_heritage_site, "es") do
    %{
      id: world_heritage_site.id,
      unique_number: world_heritage_site.unique_number,
      id_no: world_heritage_site.id_no,
      rev_bis: world_heritage_site.rev_bis,
      name_es: world_heritage_site.name_es,
      short_description_es: world_heritage_site.short_description_es,
      date_inscribed: world_heritage_site.date_inscribed,
      secondary_dates: world_heritage_site.secondary_dates,
      danger: world_heritage_site.danger,
      date_end: world_heritage_site.date_end,
      danger_list: world_heritage_site.danger_list,
      longitude: world_heritage_site.longitude,
      latitude: world_heritage_site.latitude,
      area_hectares: world_heritage_site.area_hectares,
      c1: world_heritage_site.c1,
      c2: world_heritage_site.c2,
      c3: world_heritage_site.c3,
      c4: world_heritage_site.c4,
      c5: world_heritage_site.c5,
      c6: world_heritage_site.c6,
      n7: world_heritage_site.n7,
      n8: world_heritage_site.n8,
      n9: world_heritage_site.n9,
      n10: world_heritage_site.n10,
      criteria_txt: world_heritage_site.criteria_txt,
      category: world_heritage_site.category,
      category_short: world_heritage_site.category_short,
      states_name_es: world_heritage_site.states_name_es,
      iso_code: world_heritage_site.iso_code,
      udnp_code: world_heritage_site.udnp_code,
      transboundary: world_heritage_site.transboundary
    }
  end

  defp data_by_locale(world_heritage_site, "fr") do
    %{
      id: world_heritage_site.id,
      unique_number: world_heritage_site.unique_number,
      id_no: world_heritage_site.id_no,
      rev_bis: world_heritage_site.rev_bis,
      name_fr: world_heritage_site.name_fr,
      short_description_fr: world_heritage_site.short_description_fr,
      justification_fr: world_heritage_site.justification_fr,
      date_inscribed: world_heritage_site.date_inscribed,
      secondary_dates: world_heritage_site.secondary_dates,
      danger: world_heritage_site.danger,
      date_end: world_heritage_site.date_end,
      danger_list: world_heritage_site.danger_list,
      longitude: world_heritage_site.longitude,
      latitude: world_heritage_site.latitude,
      area_hectares: world_heritage_site.area_hectares,
      c1: world_heritage_site.c1,
      c2: world_heritage_site.c2,
      c3: world_heritage_site.c3,
      c4: world_heritage_site.c4,
      c5: world_heritage_site.c5,
      c6: world_heritage_site.c6,
      n7: world_heritage_site.n7,
      n8: world_heritage_site.n8,
      n9: world_heritage_site.n9,
      n10: world_heritage_site.n10,
      criteria_txt: world_heritage_site.criteria_txt,
      category: world_heritage_site.category,
      category_short: world_heritage_site.category_short,
      states_name_fr: world_heritage_site.states_name_fr,
      region_fr: world_heritage_site.region_fr,
      iso_code: world_heritage_site.iso_code,
      udnp_code: world_heritage_site.udnp_code,
      transboundary: world_heritage_site.transboundary
    }
  end

  defp data_by_locale(world_heritage_site, "ru") do
    %{
      id: world_heritage_site.id,
      unique_number: world_heritage_site.unique_number,
      id_no: world_heritage_site.id_no,
      rev_bis: world_heritage_site.rev_bis,
      name_ru: world_heritage_site.name_ru,
      short_description_ru: world_heritage_site.short_description_ru,
      date_inscribed: world_heritage_site.date_inscribed,
      secondary_dates: world_heritage_site.secondary_dates,
      danger: world_heritage_site.danger,
      date_end: world_heritage_site.date_end,
      danger_list: world_heritage_site.danger_list,
      longitude: world_heritage_site.longitude,
      latitude: world_heritage_site.latitude,
      area_hectares: world_heritage_site.area_hectares,
      c1: world_heritage_site.c1,
      c2: world_heritage_site.c2,
      c3: world_heritage_site.c3,
      c4: world_heritage_site.c4,
      c5: world_heritage_site.c5,
      c6: world_heritage_site.c6,
      n7: world_heritage_site.n7,
      n8: world_heritage_site.n8,
      n9: world_heritage_site.n9,
      n10: world_heritage_site.n10,
      criteria_txt: world_heritage_site.criteria_txt,
      category: world_heritage_site.category,
      category_short: world_heritage_site.category_short,
      states_name_ru: world_heritage_site.states_name_ru,
      iso_code: world_heritage_site.iso_code,
      udnp_code: world_heritage_site.udnp_code,
      transboundary: world_heritage_site.transboundary
    }
  end

  defp data_by_locale(world_heritage_site, "zh") do
    %{
      id: world_heritage_site.id,
      unique_number: world_heritage_site.unique_number,
      id_no: world_heritage_site.id_no,
      rev_bis: world_heritage_site.rev_bis,
      name_zh: world_heritage_site.name_zh,
      short_description_zh: world_heritage_site.short_description_zh,
      date_inscribed: world_heritage_site.date_inscribed,
      secondary_dates: world_heritage_site.secondary_dates,
      danger: world_heritage_site.danger,
      date_end: world_heritage_site.date_end,
      danger_list: world_heritage_site.danger_list,
      longitude: world_heritage_site.longitude,
      latitude: world_heritage_site.latitude,
      area_hectares: world_heritage_site.area_hectares,
      c1: world_heritage_site.c1,
      c2: world_heritage_site.c2,
      c3: world_heritage_site.c3,
      c4: world_heritage_site.c4,
      c5: world_heritage_site.c5,
      c6: world_heritage_site.c6,
      n7: world_heritage_site.n7,
      n8: world_heritage_site.n8,
      n9: world_heritage_site.n9,
      n10: world_heritage_site.n10,
      criteria_txt: world_heritage_site.criteria_txt,
      category: world_heritage_site.category,
      category_short: world_heritage_site.category_short,
      states_name_zh: world_heritage_site.states_name_zh,
      iso_code: world_heritage_site.iso_code,
      udnp_code: world_heritage_site.udnp_code,
      transboundary: world_heritage_site.transboundary
    }
  end

  defp data(%WorldHeritageSite{} = world_heritage_site) do
    %{
      id: world_heritage_site.id,
      unique_number: world_heritage_site.unique_number,
      id_no: world_heritage_site.id_no,
      rev_bis: world_heritage_site.rev_bis,
      name_en: world_heritage_site.name_en,
      name_fr: world_heritage_site.name_fr,
      name_es: world_heritage_site.name_es,
      name_ru: world_heritage_site.name_ru,
      name_ar: world_heritage_site.name_ar,
      name_zh: world_heritage_site.name_zh,
      short_description_en: world_heritage_site.short_description_en,
      short_description_fr: world_heritage_site.short_description_fr,
      short_description_es: world_heritage_site.short_description_es,
      short_description_ru: world_heritage_site.short_description_ru,
      short_description_ar: world_heritage_site.short_description_ar,
      short_description_zh: world_heritage_site.short_description_zh,
      justification_en: world_heritage_site.justification_en,
      justification_fr: world_heritage_site.justification_fr,
      date_inscribed: world_heritage_site.date_inscribed,
      secondary_dates: world_heritage_site.secondary_dates,
      danger: world_heritage_site.danger,
      date_end: world_heritage_site.date_end,
      danger_list: world_heritage_site.danger_list,
      longitude: world_heritage_site.longitude,
      latitude: world_heritage_site.latitude,
      area_hectares: world_heritage_site.area_hectares,
      c1: world_heritage_site.c1,
      c2: world_heritage_site.c2,
      c3: world_heritage_site.c3,
      c4: world_heritage_site.c4,
      c5: world_heritage_site.c5,
      c6: world_heritage_site.c6,
      n7: world_heritage_site.n7,
      n8: world_heritage_site.n8,
      n9: world_heritage_site.n9,
      n10: world_heritage_site.n10,
      criteria_txt: world_heritage_site.criteria_txt,
      category: world_heritage_site.category,
      category_short: world_heritage_site.category_short,
      states_name_en: world_heritage_site.states_name_en,
      states_name_fr: world_heritage_site.states_name_fr,
      states_name_es: world_heritage_site.states_name_es,
      states_name_ru: world_heritage_site.states_name_ru,
      states_name_ar: world_heritage_site.states_name_ar,
      states_name_zh: world_heritage_site.states_name_zh,
      region_en: world_heritage_site.region_en,
      region_fr: world_heritage_site.region_fr,
      iso_code: world_heritage_site.iso_code,
      udnp_code: world_heritage_site.udnp_code,
      transboundary: world_heritage_site.transboundary,
      reviews: render_reviews(world_heritage_site.reviews)
    }
  end

  defp data_for_maps(world_heritage_site) do
    %{
      id: world_heritage_site.id,
      unique_number: world_heritage_site.unique_number,
      longitude: world_heritage_site.longitude,
      latitude: world_heritage_site.latitude
    }
  end

  defp render_reviews(reviews) do
    Enum.map(reviews, fn review ->
      %{
        id: review.id,
        rating: review.rating,
        content: review.content,
        inserted_at: review.inserted_at,
      }
    end)
  end
end
