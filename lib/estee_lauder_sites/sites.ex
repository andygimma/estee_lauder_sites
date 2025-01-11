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
  Returns an `%Ecto.Changeset{}` for tracking world_heritage_site changes.

  ## Examples

      iex> change_world_heritage_site(world_heritage_site)
      %Ecto.Changeset{data: %WorldHeritageSite{}}

  """
  def change_world_heritage_site(%WorldHeritageSite{} = world_heritage_site, attrs \\ %{}) do
    WorldHeritageSite.changeset(world_heritage_site, attrs)
  end
end
