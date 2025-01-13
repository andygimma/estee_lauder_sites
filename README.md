# EsteeLauderSites

Welcome to the Estee Luader internal Sites application!

This app is designed to give users an API to find interesting sites around the world. To start off our adventure, we're using World Heritage Sites (WHS) as a proof of concept. We hope you get as much out of using this API as we did building it!

Currently, this API allow you to consume WHS in a variety of ways. You can:

- consume a paginated index
- view sites by id
- view sites by id and locale, which returns a subset of only the locale data you want to see.
- a map endpoint, which returns just enough data to put pins on a map, and ids to search for more info as needed.

Furthermore, each site can have many reviews. You can:

- See all reviews for a site
- See all reviews by locale for a site
- Create, Update, and Delete reviews

If you would like to see new features or report bugs, open up an issue.

And if you'd like to contribute open a PR.

Good luck and enjoy exploring these sites!

## Set up

### Upload World Heritage Sites csv to the database

`mix world_heritage_sites_upload`

### Add Reviews to World Heritage Sites

`mix run priv/repo/seeds.exs`

## API Usage

### World Heritage Sites

#### Paginated Index

GET `/api/world_heritage_sites?page=<page_number>`

Returns all columns for each World Heritage Site by page.

#### Show

GET `/api/world_heritage_sites/1`

Returns all columns for a given World Heritage Site by id.

GET `/api/world_heritage_sites/1?locale="ar"`

Using the optional param 'locale' you can get a subset of data suitable for a given locale.

Available locales include "ar", "en", "es", "fr", "ru", "zh".

#### Map

Returns a latitude, longitude, database id, and unique_number.

GET `/api/world_heritage_sites/map"`

### Reviews

#### Show

Returns id, content, rating

GET `/api/reviews/:id`

### Create

Returns a review.

Body should include {review: content, rating, locale}

POST `/api/reviews/`

### Update

Returns a review.

Body should optionally include {review: content, rating, locale}

PATCH `/api/reviews/:id`

### Delete

Deletes a review

DELETE `/api/reviews/:id`
