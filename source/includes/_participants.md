# Participants

## Participant

The Participant object represents a User's connection to an Event.

### Properties

Property | Type | Description
--------- | ----------- | -----------
status | `string` | Possible values are `confirmed` and `destroyed`. A destroyed Participant has been completely removed from the Event.
visible | `boolean` | Will return `true` if the Participant is visible in the participant list.
bookable | `boolean` | Will return `true` if the Participant is bookable for meetings and available for messages.
checked_in | `boolean` | Will return `true` if the Participant has any checked in tickets.

## Create a Participant

```shell
curl "https://invitepeople.com/api/v2/events/1/participants" \
  -X POST \
  -H "Authorization: Bearer TOKEN" \
  -H "Content-Type: application/json" \
  -d '{"user": {"email": "pharetra@invitepeople.com"},
       "profile": {"first_name": "Pharetra", "last_name": "Quam"}}'
```

> The above command returns JSON structured like this:

```json
{
  "id": 3,
  "created_at": "2021-04-06T07:37:21.996+02:00",
  "updated_at": "2021-04-06T07:37:22.064+02:00",
  "status": "confirmed",
  "visible": true,
  "bookable": true,
  "checked_in": false,
  "user": {
    "id": 3,
    "email": "pharetra@invitepeople.com",
    "lang": "en",
    "time_zone": "Stockholm",
    "mobile": null
  },
  "profile": {
    "id": 3,
    "company_name": null,
    "title": null,
    "address": null,
    "zip": null,
    "city": null,
    "phone": null,
    "first_name": "Pharetra",
    "last_name": "Quam",
    "country": "SE",
    "profile_field_values": []
  },
  "tickets": []
}
```

> If an error occurs, it returns JSON structured like this:

```json
{
    "error": "participant already exists"
}
```


Use this endpoint to create a Participant for an Event.

### HTTP Request

`POST https://invitepeople.com/api/v2/events/<EVENT_ID>/participants`
<br>
`Content-Type: application/json`

### URL Parameters

Parameter | Description
--------- | -----------
**EVENT_ID** `required` | The ID of the Event.

### Parameters

Parameter | Type | Description
--------- | ----------- | -----------
**user**&nbsp;`required` | `object` | The User for the new Participant.
profile&nbsp;`optional` | `object` | The Profile for the new Participant.
visible&nbsp;`optional` | `boolean` | Set to `false` if the Participant should not be visible in the participant list. Defaults to `true`.
bookable&nbsp;`optional` | `boolean` | Set to `false` if the Participant should not be bookable for meetings or available for messages. Defaults to `true`.

### User Parameters

Parameter | Type | Description
--------- | ----------- | -----------
**email**&nbsp;`required` | `string` | The email address for the User.
mobile&nbsp;`optional` | `string` | The mobile phone number for the User. The mobile phone number should be in international format with a valid country prefix and without any special characters or spaces, for example 4670123456.

### Profile Parameters

Parameter | Type | Description
--------- | ----------- | -----------
first_name&nbsp;`optional` | `string` | The first name for the Profile.
last_name&nbsp;`optional` | `string` | The last name for the Profile.
country&nbsp;`optional` | `string` | The country for the Profile. Should be an ISO 3166-1 alpha-2 code.
company_name&nbsp;`optional` | `string` | The company name for the Profile.
title&nbsp;`optional` | `string` | The title for the Profile.
address&nbsp;`optional` | `string` | The postal address for the Profile.
zip&nbsp;`optional` | `string` | The zip code for the Profile.
city&nbsp;`optional` | `string` | The city for the Profile.
phone&nbsp;`optional` | `string` | The phone number for the Profile.

### Returns

If successfull it should return the created Participant object.

### Errors

Error | Description
--------- | -----------
invalid&nbsp;email | The provided email address is invalid.
participant&nbsp;already&nbsp;exists | A Participant for this User and Event already exists.


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
    "visible": true,
    "bookable": true,
    "checked_in": true,
    "user": {
      "id": 1,
      "email": "amet@invitepeople.com",
      "lang": "en",
      "time_zone": "Berlin",
      "mobile": "46700000000"
    },
    "profile": {
      "id": 1,
      "address": "Condimentum 1",
      "zip": "000 00",
      "city": "Berlin",
      "country": "DE",
      "phone": "000 - 00 00 00",
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
    "visible": false,
    "bookable": true,
    "checked_in": false,
    "user": {
      "id": 2,
      "email": "adipiscing@invitepeople.com",
      "lang": "sv",
      "time_zone": "Stockholm",
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
**EVENT_ID** `required` | The ID of the Event.

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
  "visible": true,
  "bookable": true,
  "checked_in": true,
  "user": {
    "id": 1,
    "email": "amet@invitepeople.com",
    "lang": "en",
    "time_zone": "Berlin",
    "mobile": "46700000000"
  },
  "profile": {
    "id": 1,
    "address": "Condimentum 1",
    "zip": "000 00",
    "city": "Berlin",
    "country": "DE",
    "phone": "000 - 00 00 00",
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
**ID** `required` | The ID of the Participant.