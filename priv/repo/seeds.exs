# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     EsteeLauderSites.Repo.insert!(%EsteeLauderSites.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
import Faker

alias EsteeLauderSites.Repo
alias EsteeLauderSites.Reviews.Review
alias EsteeLauderSites.Sites.WorldHeritageSite

Repo.all(WorldHeritageSite)
|> Enum.each(fn site ->
  num_reviews = Enum.random(1..5)

  Enum.each(1..num_reviews, fn _ ->
    %Review{
      world_heritage_site_id: site.id,
      rating: Enum.random(1..5),
      content: Faker.Lorem.sentence(),
    }
    |> Repo.insert!()
  end)
end)
