# Ticket Types

## Ticket Type

The Ticket Type object represents a Ticket category for an Event. The Ticket Type can connect Tickets to the Event or to a specific Seminar.

### Properties

Property | Type | Description
--------- | ----------- | -----------
description | `object` | The name of the Ticket Type. An object with the Event's language codes as keys and the translated names as values.
kind | `string` | Possible values are `entrance` (Entrance ticket), `other` (Additional ticket) and `null`. 

## Get all Ticket Types

```shell
curl "https://invitepeople.com/api/v2/events/1/ticket_types" \
  -H "Authorization: Bearer TOKEN"
```

> The above command returns JSON structured like this:

```json
[
  {
    "id": 1,
    "description": {
      "sv": "Mattis Purus",
      "en": "Sollicitudin Ullamcorper"
    },
    "kind": "entrance"
  },
  {
    "id": 2,
    "description": {
      "sv": "Ridiculus Venenatis Fusce",
      "en": "Ridiculus Venenatis Fusce"
    },
    "kind": null,
    "seminar": {
      "id": 1,
      "name": "Ridiculus Venenatis Fusce",
      "location": "Condimentum Inceptos",
      "start_time": "2018-10-11T14:05:00.000+02:00",
      "end_time": "2018-10-11T14:30:00.000+02:00",
      "code": "001"
    }
  },
  {
    "id": 3,
    "description": {
      "sv": "Ullamcorper Sit Tellus",
      "en": "Ullamcorper Sit Tellus"
    },
    "kind": null,
    "seminar": {
      "id": 2,
      "name": "Ullamcorper Sit Tellus",
      "location": "Mattis Pellentesque",
      "start_time": "2018-10-11T15:35:00.000+02:00",
      "end_time": "2018-10-11T16:00:00.000+02:00",
      "code": "002"
    }
  }
]
```

Use this endpoint to retrieve all Ticket Types for an Event.

### HTTP Request

`GET https://invitepeople.com/api/v2/events/<EVENT_ID>/ticket_types`

### URL Parameters

Parameter | Description
--------- | -----------
**EVENT_ID** `required` | The ID of the Event.