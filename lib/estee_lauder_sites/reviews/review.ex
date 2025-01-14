defmodule EsteeLauderSites.Reviews.Review do
  @moduledoc """
  The Review schema.
  """
  use Ecto.Schema
  import Ecto.Changeset

  schema "reviews" do
    field :content, :string
    field :rating, :integer
    field :locale, :string, default: "en"

    belongs_to :world_heritage_site, EsteeLauderSites.Sites.WorldHeritageSite

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(review, attrs) do
    review
    |> cast(attrs, [:content, :rating, :locale])
    |> validate_required([:content, :locale, :rating])
    |> validate_inclusion(:rating, 1..5)
  end
end
