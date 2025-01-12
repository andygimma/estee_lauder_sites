defmodule EsteeLauderSites.Repo.Migrations.CreateReviews do
  use Ecto.Migration

  def change do
    create table(:reviews) do
      add :content, :text
      add :rating, :integer
      add :world_heritage_site_id, references(:world_heritage_sites, on_delete: :delete_all)

      timestamps(type: :utc_datetime)
    end

    create index(:reviews, [:world_heritage_site_id])
  end
end
