# Changelog

## `2.2.18` 2024-09-10

Added `Aggregate Web Analytics` endpoint.

Added `Break down Web Analytics` endpoint.

Added `Get Web Analytics time series` endpoint.

## `2.2.17` 2024-09-07

Added `Get all Partner Codes` endpoint.

Added `Get a specific Partner Code` endpoint.

Added `Get all Ticket Scans` endpoint.

Added `Get a specific Ticket Scan` endpoint.

Added `partner_code_id` to the Ticket object.

## `2.2.16` 2024-08-16

Added `Get all Companies` endpoint.

Added `Get a specific Company` endpoint.

## `2.2.15` 2024-05-20

Added `data_minimization_status` to the Event object.

## `2.2.14` 2024-04-05

Added `Get all Meetings` endpoint.

Added `Get a specific Meeting` endpoint.

## `2.2.13` 2023-09-11

Added `order` to the Ticket object.
## `2.2.12` 2023-05-04

Added key `published` to the Event endpoints.
## `2.2.11` 2023-04-26

Added `Update a Profile Field Value` endpoint.

Added `Delete a Profile Field Value` endpoint.

## `2.2.10` 2023-04-25

Added `Get a User` endpoint.

Added `Get a Profile Field Value` endpoint.
## `2.2.9` 2023-04-11

Added a new `webhook_event_kind` for the Webhook object: `participant_updated`.

## `2.2.8` 2023-03-22

Added `custom_event_fields` to the Organization object.

Added `custom_event_fields_data` to the Event object.

## `2.2.7` 2023-01-20

Added `Get a specific Event` endpoint.

Added `Update a Participant` endpoint.

## `2.2.6` 2022-12-22

Added `Get a Ticket` endpoint.

Added `Update a Ticket` endpoint.

Added `Delete a Ticket` endpoint.

Added `paid_price`, `vat`, and `external_id` to the Ticket object.

## `2.2.5` 2022-11-18

Added keys `external_id` and `login_link` to the Participant object.

Added `external_id`, `price`, `selling_start_time`, `selling_end_time`, `min_purchase_amount`, `max_purchase_amount`, `amount`, `vat_percentage`, `visibility`, `caption`, and `personal_addon` to the TicketType object.

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
