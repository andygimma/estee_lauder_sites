defmodule EsteeLauderSites.ReviewsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `EsteeLauderSites.Reviews` context.
  """

  @doc """
  Generate a review.
  """
  def review_fixture(attrs \\ %{}) do
    {:ok, review} =
      attrs
      |> Enum.into(%{
        content: "some content",
        rating: 3,
        locale: "ar"
      })
      |> EsteeLauderSites.Reviews.create_review()

    review
  end
end
