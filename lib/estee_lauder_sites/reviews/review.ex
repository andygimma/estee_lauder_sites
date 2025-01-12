defmodule EsteeLauderSites.Reviews.Review do
  use Ecto.Schema
  import Ecto.Changeset

  schema "reviews" do
    field :content, :string
    field :rating, :integer

    belongs_to :world_heritage_site, EsteeLauderSites.Sites.WorldHeritageSite

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(review, attrs) do
    review
    |> cast(attrs, [:content, :rating])
    |> validate_required([:content, :rating])
    |> validate_inclusion(:rating, 1..5)
  end
end
