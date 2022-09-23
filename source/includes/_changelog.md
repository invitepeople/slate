# Changelog

## `2.2.4` 2022-09-23

Added `Get a specific Ticket Type` endpoint.

## `2.2.3` 2022-06-27

Added keys `honorific_title` and `additional_title` to the Profile object when fetching Participants.

## `2.2.2` 2022-05-18

Added keys `tickets` and `profile_field_values` to the `Get all Participants` endpoint. All Participant endpoints now returns the same data structure.

## `2.2.1` 2022-04-27

Added `Send an Email` endpoint.

Added `Get a specific Email` endpoint.

## `2.2.0` 2022-02-11

Added parameters `limit`, `id_before` and `updated_after` to `Get all` endpoints. The default `limit` and max number of records in a single request is now **1000**.

Added the new concept `Webhook` that can trigger callbacks for the events `participant_confirmed` and `participant_destroyed`.

Added endpoints `Create a Webhook`, `Get all Webhooks`, `Update a Webhook`, `Delete a Webhook`, `Verify a Webhook` and `Get all Webhook Deliveries`.

Added key `created_at` to the `Get your Organization` endpoint.

Added keys `created_at` and `updated_at` to the `Get all Ticket Types`, `Get all Profile Fields`, `Get a specific Profile Field` and `Create a Profile Field Value` endpoints.

Added error code `422 Unprocessable Entity` to docs.
## `2.1.2` 2021-08-27

Added `Get a specific Profile Field` endpoint.

## `2.1.1` 2021-04-06

Added keys `visible` and `bookable` to the `Create a Participant`, `Get a specific Participant` and `Get all Participants` endpoints.

## `2.1.0` 2021-04-04

Added `Get your Organization` endpoint.

Added `Get all Ticket Types` endpoint.

Added `Get all Profile Fields` endpoint.

Added `Create a Participant` endpoint.

Added `Create a Ticket` endpoint.

Added `Create a Profile Field Value` endpoint.

Added keys `time_zone`, `lang`, `phone`, `address`, `zip`, `city`, `country` to the `Get a specific Participant` and `Get all Participants` endpoints.

Added error code `400 Bad Request` to docs.

Added Event properties and other clarifications to docs.

## `2.0.1` 2020-05-13

Added key `checked_in` to the `Get all Participants` endpoint.

## `2.0.0` 2019-12-08

Initial release.
