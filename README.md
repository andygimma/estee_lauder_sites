# EsteeLauderSites

Welcome to the Estee Luader internal Sites application!

This app is designed to give users an API to find interesting sites around the world. To start off our adventure, we're using World Heritage Sites (WHS) as a proof of concept. We hope you get as much out of using this API as we did building it!

Currently, this API allow you to consume WHS in a variety of ways. You can:

- consume a paginated inded
- view sites by id
- view sites by id and locale, which returns a subset of only the locale data you want to see.
- a map endpoint, which returns just enough data to put pins on a map, and ids to search for more info as needed.

If you would like to see new features or report bugs, open up an issue.

And if you'd like to contribute open a PR.

Good luck and enjoy exploring these sites!

## API Usage

### Paginated Index

`/api/world_heritage_sites?page=<page_number>`

Returns all columns for each World Heritage Site by page.

### Show

`/api/world_heritage_sites/1`

Returns all columns for a given World Heritage Site by id.

`/api/world_heritage_sites/1?locale="ar"`

Using the optional param 'locale' you can get a subset of data suitable for a given locale.

Available locales include "ar", "en", "es", "fr", "ru", "zh".

### Map

Returns a latitude, longitude, database id, and unique_number.

`/api/world_heritage_sites/map"`
