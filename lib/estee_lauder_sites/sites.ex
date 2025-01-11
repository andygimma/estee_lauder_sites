defmodule EsteeLauderSites.Sites do
  @moduledoc """
  The Sites context.
  """

  import Ecto.Query, warn: false
  alias EsteeLauderSites.Repo

  alias EsteeLauderSites.Sites.WorldHeritageSite

  @doc """
  Returns the list of world_heritage_sites.

  ## Examples

      iex> list_world_heritage_sites()
      [%WorldHeritageSite{}, ...]

  """
  def list_world_heritage_sites do
    Repo.all(WorldHeritageSite)
  end

  def list_world_heritage_sites_for_maps do
    Repo.all(from w in WorldHeritageSite, where: not is_nil(w.longitude) and not is_nil(w.latitude), select: %{
      id: w.id,
      unique_number: w.unique_number,
      latitude: w.latitude,
      longitude: w.longitude
    })
  end

  @doc """
  Returns the list of world_heritage_sites by page.

  ## Examples

      iex> list_world_heritage_sites()
      [%WorldHeritageSite{}, ...]

  """
  def paginate_world_heritage_sites(page, limit \\ 100) do
    offset = limit * page - 100
    Repo.all(from w in WorldHeritageSite, limit: ^limit, offset: ^offset)
  end


  @doc """
  Gets a single world_heritage_site.

  Raises `Ecto.NoResultsError` if the World heritage site does not exist.

  ## Examples

      iex> get_world_heritage_site!(123)
      %WorldHeritageSite{}

      iex> get_world_heritage_site!(456)
      ** (Ecto.NoResultsError)

  """
  def get_world_heritage_site!(id), do: Repo.get!(WorldHeritageSite, id)

  @doc """
  Gets a single world_heritage_site.

  Raises `Ecto.NoResultsError` if the World heritage site does not exist.

  ## Examples

      iex> get_world_heritage_site!(123, "ar")
      %WorldHeritageSite{}

      iex> get_world_heritage_site!(456, "ar")
      ** (Ecto.NoResultsError)

  """
  def get_world_heritage_site!(id, "ar") do
    Repo.one(
      from w in WorldHeritageSite,
        where: w.id == ^id,
        select: %{
          id: w.id,
          unique_number: w.unique_number,
          id_no: w.id_no,
          rev_bis: w.rev_bis,
          name_ar: w.name_ar,
          short_description_ar: w.short_description_ar,
          date_inscribed: w.date_inscribed,
          secondary_dates: w.secondary_dates,
          danger: w.danger,
          date_end: w.date_end,
          danger_list: w.danger_list,
          longitude: w.longitude,
          latitude: w.latitude,
          area_hectares: w.area_hectares,
          c1: w.c1,
          c2: w.c2,
          c3: w.c3,
          c4: w.c4,
          c5: w.c5,
          c6: w.c6,
          n7: w.n7,
          n8: w.n8,
          n9: w.n9,
          n10: w.n10,
          criteria_txt: w.criteria_txt,
          category: w.category,
          category_short: w.category_short,
          states_name_ar: w.states_name_ar,
          iso_code: w.iso_code,
          udnp_code: w.udnp_code,
          transboundary: w.transboundary
        }
    )
  end

  def get_world_heritage_site!(id, "en") do
    Repo.one(
      from w in WorldHeritageSite,
        where: w.id == ^id,
        select: %{
          id: w.id,
          unique_number: w.unique_number,
          id_no: w.id_no,
          rev_bis: w.rev_bis,
          name_en: w.name_en,
          short_description_en: w.short_description_en,
          date_inscribed: w.date_inscribed,
          secondary_dates: w.secondary_dates,
          danger: w.danger,
          date_end: w.date_end,
          danger_list: w.danger_list,
          longitude: w.longitude,
          latitude: w.latitude,
          area_hectares: w.area_hectares,
          c1: w.c1,
          c2: w.c2,
          c3: w.c3,
          c4: w.c4,
          c5: w.c5,
          c6: w.c6,
          n7: w.n7,
          n8: w.n8,
          n9: w.n9,
          n10: w.n10,
          criteria_txt: w.criteria_txt,
          category: w.category,
          category_short: w.category_short,
          states_name_en: w.states_name_en,
          iso_code: w.iso_code,
          udnp_code: w.udnp_code,
          transboundary: w.transboundary,
          region_en: w.region_en,
          justification_en: w.justification_en
        }
    )
  end

  def get_world_heritage_site!(id, "es") do
    Repo.one(
      from w in WorldHeritageSite,
        where: w.id == ^id,
        select: %{
          id: w.id,
          unique_number: w.unique_number,
          id_no: w.id_no,
          rev_bis: w.rev_bis,
          name_es: w.name_es,
          short_description_es: w.short_description_es,
          date_inscribed: w.date_inscribed,
          secondary_dates: w.secondary_dates,
          danger: w.danger,
          date_end: w.date_end,
          danger_list: w.danger_list,
          longitude: w.longitude,
          latitude: w.latitude,
          area_hectares: w.area_hectares,
          c1: w.c1,
          c2: w.c2,
          c3: w.c3,
          c4: w.c4,
          c5: w.c5,
          c6: w.c6,
          n7: w.n7,
          n8: w.n8,
          n9: w.n9,
          n10: w.n10,
          criteria_txt: w.criteria_txt,
          category: w.category,
          category_short: w.category_short,
          states_name_es: w.states_name_es,
          iso_code: w.iso_code,
          udnp_code: w.udnp_code,
          transboundary: w.transboundary
        }
    )
  end

  def get_world_heritage_site!(id, "fr") do
    Repo.one(
      from w in WorldHeritageSite,
        where: w.id == ^id,
        select: %{
          id: w.id,
          unique_number: w.unique_number,
          id_no: w.id_no,
          rev_bis: w.rev_bis,
          name_fr: w.name_fr,
          short_description_fr: w.short_description_fr,
          date_inscribed: w.date_inscribed,
          secondary_dates: w.secondary_dates,
          danger: w.danger,
          date_end: w.date_end,
          danger_list: w.danger_list,
          longitude: w.longitude,
          latitude: w.latitude,
          area_hectares: w.area_hectares,
          c1: w.c1,
          c2: w.c2,
          c3: w.c3,
          c4: w.c4,
          c5: w.c5,
          c6: w.c6,
          n7: w.n7,
          n8: w.n8,
          n9: w.n9,
          n10: w.n10,
          criteria_txt: w.criteria_txt,
          category: w.category,
          category_short: w.category_short,
          states_name_fr: w.states_name_fr,
          iso_code: w.iso_code,
          udnp_code: w.udnp_code,
          transboundary: w.transboundary,
          region_fr: w.region_fr,
          justification_fr: w.justification_fr
        }
    )
  end

  def get_world_heritage_site!(id, "ru") do
    Repo.one(
      from w in WorldHeritageSite,
        where: w.id == ^id,
        select: %{
          id: w.id,
          unique_number: w.unique_number,
          id_no: w.id_no,
          rev_bis: w.rev_bis,
          name_ru: w.name_ru,
          short_description_ru: w.short_description_ru,
          date_inscribed: w.date_inscribed,
          secondary_dates: w.secondary_dates,
          danger: w.danger,
          date_end: w.date_end,
          danger_list: w.danger_list,
          longitude: w.longitude,
          latitude: w.latitude,
          area_hectares: w.area_hectares,
          c1: w.c1,
          c2: w.c2,
          c3: w.c3,
          c4: w.c4,
          c5: w.c5,
          c6: w.c6,
          n7: w.n7,
          n8: w.n8,
          n9: w.n9,
          n10: w.n10,
          criteria_txt: w.criteria_txt,
          category: w.category,
          category_short: w.category_short,
          states_name_ru: w.states_name_ru,
          iso_code: w.iso_code,
          udnp_code: w.udnp_code,
          transboundary: w.transboundary
        }
    )
  end

  def get_world_heritage_site!(id, "zh") do
    Repo.one(
      from w in WorldHeritageSite,
        where: w.id == ^id,
        select: %{
          id: w.id,
          unique_number: w.unique_number,
          id_no: w.id_no,
          rev_bis: w.rev_bis,
          name_zh: w.name_zh,
          short_description_zh: w.short_description_zh,
          date_inscribed: w.date_inscribed,
          secondary_dates: w.secondary_dates,
          danger: w.danger,
          date_end: w.date_end,
          danger_list: w.danger_list,
          longitude: w.longitude,
          latitude: w.latitude,
          area_hectares: w.area_hectares,
          c1: w.c1,
          c2: w.c2,
          c3: w.c3,
          c4: w.c4,
          c5: w.c5,
          c6: w.c6,
          n7: w.n7,
          n8: w.n8,
          n9: w.n9,
          n10: w.n10,
          criteria_txt: w.criteria_txt,
          category: w.category,
          category_short: w.category_short,
          states_name_zh: w.states_name_zh,
          iso_code: w.iso_code,
          udnp_code: w.udnp_code,
          transboundary: w.transboundary
        }
    )
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking world_heritage_site changes.

  ## Examples

      iex> change_world_heritage_site(world_heritage_site)
      %Ecto.Changeset{data: %WorldHeritageSite{}}

  """
  def change_world_heritage_site(%WorldHeritageSite{} = world_heritage_site, attrs \\ %{}) do
    WorldHeritageSite.changeset(world_heritage_site, attrs)
  end
end
