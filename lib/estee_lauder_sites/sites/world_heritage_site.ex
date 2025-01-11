defmodule EsteeLauderSites.Sites.WorldHeritageSite do
  use Ecto.Schema
  import Ecto.Changeset

  schema "world_heritage_sites" do
    field :states_name_es, :string
    field :short_description_en, :string
    field :justification_en, :string
    field :states_name_ru, :string
    field :short_description_es, :string
    field :latitude, :float
    field :c3, :integer
    field :name_ru, :string
    field :name_es, :string
    field :c6, :integer
    field :udnp_code, :string
    field :criteria_txt, :string
    field :short_description_fr, :string
    field :name_fr, :string
    field :category, :string
    field :n8, :integer
    field :area_hectares, :float
    field :short_description_zh, :string
    field :name_zh, :string
    field :name_en, :string
    field :transboundary, :integer
    field :danger_list, :string
    field :name_ar, :string
    field :date_inscribed, :integer
    field :id_no, :integer
    field :longitude, :float
    field :c4, :integer
    field :secondary_dates, :string
    field :region_fr, :string
    field :states_name_zh, :string
    field :date_end, :float
    field :n9, :integer
    field :region_en, :string
    field :danger, :integer
    field :short_description_ru, :string
    field :short_description_ar, :string
    field :states_name_fr, :string
    field :states_name_ar, :string
    field :justification_fr, :string
    field :c1, :integer
    field :category_short, :string
    field :n7, :integer
    field :c2, :integer
    field :states_name_en, :string
    field :c5, :integer
    field :rev_bis, :string
    field :unique_number, :integer
    field :n10, :integer
    field :iso_code, :string

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(world_heritage_site, attrs) do
    world_heritage_site
    |> cast(attrs, [:unique_number, :id_no, :rev_bis, :name_en, :name_fr, :name_es, :name_ru, :name_ar, :name_zh, :short_description_en, :short_description_fr, :short_description_es, :short_description_ru, :short_description_ar, :short_description_zh, :justification_en, :justification_fr, :date_inscribed, :secondary_dates, :danger, :date_end, :danger_list, :longitude, :latitude, :area_hectares, :c1, :c2, :c3, :c4, :c5, :c6, :n7, :n8, :n9, :n10, :criteria_txt, :category, :category_short, :states_name_en, :states_name_fr, :states_name_es, :states_name_ru, :states_name_ar, :states_name_zh, :region_en, :region_fr, :iso_code, :udnp_code, :transboundary])
    |> validate_required([:unique_number, :id_no, :rev_bis, :name_en, :name_fr, :name_es, :name_ru, :name_ar, :name_zh, :short_description_en, :short_description_fr, :short_description_es, :short_description_ru, :short_description_ar, :short_description_zh, :justification_en, :justification_fr, :date_inscribed, :secondary_dates, :danger, :date_end, :danger_list, :longitude, :latitude, :area_hectares, :c1, :c2, :c3, :c4, :c5, :c6, :n7, :n8, :n9, :n10, :criteria_txt, :category, :category_short, :states_name_en, :states_name_fr, :states_name_es, :states_name_ru, :states_name_ar, :states_name_zh, :region_en, :region_fr, :iso_code, :udnp_code, :transboundary])
    |> unique_constraint(:unique_number)
  end
end
