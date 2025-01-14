defmodule EsteeLauderSites.Sites do
  @moduledoc """
  The Sites context.
  """

  import Ecto.Query, warn: false
  alias EsteeLauderSites.Repo
  alias EsteeLauderSites.Reviews.Review
  alias EsteeLauderSites.Sites.WorldHeritageSite

  @doc """
  Returns the list of world_heritage_sites with map coordinates and ids.

  ## Examples

      iex> list_world_heritage_sites()
      [%WorldHeritageSite{}, ...]

  """
  def list_world_heritage_sites_for_maps do
    case Cachex.get(:world_heritage_sites, :list_map) do
      {:ok, nil} ->
        places =
          Repo.all(
            from w in WorldHeritageSite,
              where: not is_nil(w.longitude) and not is_nil(w.latitude),
              select: %{
                id: w.id,
                unique_number: w.unique_number,
                latitude: w.latitude,
                longitude: w.longitude
              }
          )

        Cachex.put(:world_heritage_sites, :list_map, places)
        places

      {:ok, places} ->
        places
    end
  end

  @doc """
  Returns the list of world_heritage_sites by page.

  ## Examples

      iex> list_world_heritage_sites()
      [%WorldHeritageSite{}, ...]

  """
  def paginate_world_heritage_sites(page, limit \\ 100) do
    case Cachex.get(:world_heritage_sites, "index:#{page}") do
      {:ok, nil} ->
        offset = limit * page - 100

        places =
          Repo.all(from w in WorldHeritageSite, limit: ^limit, offset: ^offset)
          |> Repo.preload(:reviews)

        Cachex.put(:world_heritage_sites, "index:#{page}", places)
        places

      {:ok, places} ->
        places
    end
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
  def get_world_heritage_site!(id) do
    case Cachex.get(:world_heritage_sites, id) do
      {:ok, nil} ->
        place = Repo.get!(WorldHeritageSite, id) |> Repo.preload(:reviews)
        Cachex.put(:world_heritage_sites, id, place)
        place

      {:ok, place} ->
        place
    end
  end

  @doc """
  Gets a single world_heritage_site.

  Raises `Ecto.NoResultsError` if the World heritage site does not exist.

  ## Examples

      iex> get_world_heritage_site!(123, "ar")
      %WorldHeritageSite{}

      iex> get_world_heritage_site!(456, "ar")
      ** (Ecto.NoResultsError)

  """
  def get_world_heritage_site!(id, locale) do
    case Cachex.get(:world_heritage_sites, "#{id}:#{locale}") do
      {:ok, nil} ->
        place =
          from(w in WorldHeritageSite,
            where: w.id == ^id,
            preload: [reviews: ^from(r in Review, where: r.locale == ^locale)]
          )
          |> Repo.one()

        Cachex.put(:world_heritage_sites, "#{id}:#{locale}", place)
        place

      {:ok, place} ->
        place
    end
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
