defmodule EsteeLauderSitesWeb.ReviewController do
  use EsteeLauderSitesWeb, :controller

  alias EsteeLauderSites.Reviews
  alias EsteeLauderSites.Reviews.Review

  action_fallback EsteeLauderSitesWeb.FallbackController

  def create(conn, %{"review" => review_params}) do
    with {:ok, %Review{} = review} <- Reviews.create_review(review_params) do
      conn
      |> put_status(:created)
      |> put_resp_header("location", ~p"/api/reviews/#{review}")
      |> render(:show, review: review)
    end
  end

  def show(conn, %{"id" => id}) do
    review = Reviews.get_review!(id)
    render(conn, :show, review: review)
  end

  def update(conn, %{"id" => id, "review" => review_params}) do
    review = Reviews.get_review!(id)

    with {:ok, %Review{} = review} <- Reviews.update_review(review, review_params) do
      render(conn, :show, review: review)
    end
  end

  def delete(conn, %{"id" => id}) do
    review = Reviews.get_review!(id)

    with {:ok, %Review{}} <- Reviews.delete_review(review) do
      send_resp(conn, :no_content, "")
    end
  end
end
