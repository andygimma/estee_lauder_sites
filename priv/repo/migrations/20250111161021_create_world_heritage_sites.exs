defmodule EsteeLauderSites.Repo.Migrations.CreateWorldHeritageSites do
  use Ecto.Migration

  def change do
    create table(:world_heritage_sites) do
      add :unique_number, :integer
      add :id_no, :integer
      add :rev_bis, :string
      add :name_en, :text
      add :name_fr, :text
      add :name_es, :text
      add :name_ru, :text
      add :name_ar, :text
      add :name_zh, :text
      add :short_description_en, :text
      add :short_description_fr, :text
      add :short_description_es, :text
      add :short_description_ru, :text
      add :short_description_ar, :text
      add :short_description_zh, :text
      add :justification_en, :text
      add :justification_fr, :text
      add :date_inscribed, :integer
      add :secondary_dates, :string
      add :danger, :integer
      add :date_end, :float
      add :danger_list, :string
      add :longitude, :float
      add :latitude, :float
      add :area_hectares, :float
      add :c1, :integer
      add :c2, :integer
      add :c3, :integer
      add :c4, :integer
      add :c5, :integer
      add :c6, :integer
      add :n7, :integer
      add :n8, :integer
      add :n9, :integer
      add :n10, :integer
      add :criteria_txt, :string
      add :category, :string
      add :category_short, :string
      add :states_name_en, :string
      add :states_name_fr, :string
      add :states_name_es, :string
      add :states_name_ru, :string
      add :states_name_ar, :string
      add :states_name_zh, :string
      add :region_en, :string
      add :region_fr, :string
      add :iso_code, :string
      add :udnp_code, :string
      add :transboundary, :integer

      timestamps(type: :utc_datetime)
    end

    create unique_index(:world_heritage_sites, [:unique_number])
  end
end
