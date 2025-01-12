defmodule EsteeLauderSites.Repo.Migrations.AddLocaleToReviews do
  use Ecto.Migration

  def change do
    alter table(:reviews) do
      add :locale, :string, default: "en", null: false
    end
  end
end
