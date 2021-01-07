# Participants

## Participant

The Participant object represents a User's connection to an Event.

### Properties

Property | Type | Description
--------- | ----------- | -----------
status | `string` | Possible values are `confirmed` and `destroyed`. A destroyed Participant has been completely removed from the Event.
checked_in | `boolean` | Will return `true` if the Participant has any checked in tickets.

## Get all Participants

```shell
curl "https://invitepeople.com/api/v2/events/1/participants" \
  -H "Authorization: Bearer TOKEN"
```

> The above command returns JSON structured like this:

```json
[
  {
    "id": 1,
    "created_at": "2018-04-11T14:56:28.719+02:00",
    "updated_at": "2019-09-30T08:46:37.416+02:00",
    "status": "confirmed",
    "checked_in": true,
    "user": {
      "id": 1,
      "email": "amet@invitepeople.com",
      "mobile": "46700000000"
    },
    "profile": {
      "id": 1,
      "company_name": "InvitePeople",
      "title": "Vehicula",
      "first_name": "Amet",
      "last_name": "Risus Porta"
    },
    "company": {
      "id": 2,
      "name": "InvitePeople"
    }
  },
  {
    "id": 2,
    "created_at": "2018-04-11T14:56:28.719+02:00",
    "updated_at": "2019-12-08T16:24:56.440+01:00",
    "status": "destroyed",
    "checked_in": false,
    "user": {
      "id": 2,
      "email": "adipiscing@invitepeople.com",
      "mobile": "46700000000"
    }
  }
]
```

Use this endpoint to retrieve all Participants for an Event.

### HTTP Request

`GET https://invitepeople.com/api/v2/events/<EVENT_ID>/participants`

### URL Parameters

Parameter | Description
--------- | -----------
EVENT_ID | The ID of the Event

## Get a specific Participant

```shell
curl "https://invitepeople.com/api/v2/participants/1" \
  -H "Authorization: Bearer TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "id": 1,
  "created_at": "2018-04-11T14:56:28.719+02:00",
  "updated_at": "2019-09-30T08:46:37.416+02:00",
  "status": "confirmed",
  "user": {
    "id": 1,
    "email": "amet@invitepeople.com",
    "mobile": "46700000000"
  },
  "profile": {
    "id": 1,
    "company_name": "InvitePeople",
    "title": "Vehicula",
    "first_name": "Amet",
    "last_name": "Risus Porta",
    "profile_field_values": [
      {
        "id": 1,
        "value": "Malesuada Sit Quam",
        "profile_field": {
          "id": 1,
          "name": "fusce-ultricies-vestibulum-fermentum-pharetra-fringilla",
          "kind": "select",
          "translated_name": {
            "sv": "Fusce Ultricies Vestibulum",
            "en": "Fermentum Pharetra Fringilla"
          }
        }
      },
      {
        "id": 2,
        "value": "Adipiscing Egestas Sollicitudin Condimentum",
        "profile_field": {
          "id": 2,
          "name": "bibendum-tellus-mollis-fermentum",
          "kind": "text_field",
          "translated_name": {
            "sv": "Bibendum Tellus",
            "en": "Mollis Fermentum"
          }
        }
      }
    ]
  },
  "company": {
    "id": 2,
    "name": "InvitePeople"
  },
  "tickets": [
    {
      "id": 1,
      "created_at": "2018-05-29T10:37:15.653+02:00",
      "updated_at": "2018-05-30T22:00:01.960+02:00",
      "status": "Paid",
      "checked_in": true,
      "code": "00000001",
      "ticket_type": {
        "id": 1,
        "description": {
          "sv": "Mattis Purus",
          "en": "Sollicitudin Ullamcorper"
          },
        "kind": "entrance"
      }
    },
    {
      "id": 2,
      "created_at": "2018-08-21T16:10:23.969+02:00",
      "updated_at": "2018-10-11T14:00:16.147+02:00",
      "status": "Paid",
      "checked_in": true,
      "code": "00000002",
      "ticket_type": {
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
      }
    },
    {
      "id": 3,
      "created_at": "2018-08-21T16:17:40.098+02:00",
      "updated_at": "2018-10-11T15:36:33.921+02:00",
      "status": "Paid",
      "checked_in": false,
      "code": "00000003",
      "ticket_type": {
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
    }
  ]
}
```

Use this endpoint to retrieve a specific Participant.

### HTTP Request

`GET https://invitepeople.com/api/v2/participants/<ID>`
  
### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the Participant