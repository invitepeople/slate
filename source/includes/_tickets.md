# Tickets

## Ticket

The Ticket object represents a ticket belonging to a Participant. The ticket can provide access to the entire event or individual seminars.

### Properties

Property | Type | Description
--------- | ----------- | -----------
status | `string` | Possible values are `Paid` and `Reserved`. 
checked_in | `boolean` | Will return true if the Participant has checked in with the Ticket.
code | `string` | A generated 8 digit unique code.

## Create a Ticket

```shell
curl "https://invitepeople.com/api/v2/participants/1/tickets" \
  -X POST \
  -H "Authorization: Bearer TOKEN" \
  -H "Content-Type: application/json" \
  -d '{"ticket_type_id": 1}'
```

> The above command returns JSON structured like this:

```json
{
  "id": 1,
  "created_at": "2018-05-29T10:37:15.653+02:00",
  "updated_at": "2018-05-30T22:00:01.960+02:00",
  "status": "Paid",
  "checked_in": true,
  "code": "00000001",
  "participant_id": 1,
  "ticket_type": {
    "id": 1,
    "description": {
      "sv": "Mattis Purus",
      "en": "Sollicitudin Ullamcorper"
      },
    "kind": "entrance"
  }
}
```

> If an error occurs, it returns JSON structured like this:

```json
{
    "error": "could not create ticket"
}
```


Use this endpoint to create a Ticket for a Participant.

### HTTP Request

`POST https://invitepeople.com/api/v2/participants/<PARTICIPANT_ID>/tickets`
<br>
`Content-Type: application/json`

### URL Parameters

Parameter | Description
--------- | -----------
**PARTICIPANT_ID** `required` | The ID of the Participant.

### Parameters

Parameter | Type | Description
--------- | ----------- | -----------
**ticket_type_id** `required` | `integer` | The ID of the Ticket Type for the new Ticket.

### Returns

If successfull it should return the created Ticket object.

### Errors

Error | Description
--------- | -----------
ticket&nbsp;type&nbsp;not&nbsp;found | The provided Ticket Type ID could not be found.
could&nbsp;not&nbsp;create&nbsp;ticket | The Ticket could not be created.

## Get a Ticket

```shell
curl "https://invitepeople.com/api/v2/tickets/1" \
  -X GET \
  -H "Authorization: Bearer TOKEN" \
  -H "Content-Type: application/json"
```

> The above command returns JSON structured like this:

```json
{
  "id": 1,
  "created_at": "2018-05-29T10:37:15.653+02:00",
  "updated_at": "2018-05-30T22:00:01.960+02:00",
  "status": "Paid",
  "checked_in": true,
  "code": "00000001",
  "participant_id": 1,
  "ticket_type": {
    "id": 1,
    "description": {
      "sv": "Mattis Purus",
      "en": "Sollicitudin Ullamcorper"
      },
    "kind": "entrance"
  }
}
```

> If an error occurs, it returns JSON structured like this:

```json
{
    "error": "ticket not found"
}
```


Use this endpoint to get a specific Ticket.

### HTTP Request

`POST https://invitepeople.com/api/v2/tickets/<TICKET_ID>`
<br>
`Content-Type: application/json`

### URL Parameters

Parameter | Description
--------- | -----------
**TICKET_ID** `required` | The ID of the Ticket.

### Returns

If successful it should return the Ticket object.

### Errors

Error | Description
--------- | -----------
ticket&nbsp;not&nbsp;found | The provided Ticket ID could not be found.

## Update a Ticket

```shell
curl "https://invitepeople.com/api/v2/tickets/1" \
  -X PUT \
  -H "Authorization: Bearer TOKEN" \
  -H "Content-Type: application/json"\
  -d '{"ticket": { "checked_in": true }}'
```

> The above command returns JSON structured like this:

```json
{
  "id": 1,
  "created_at": "2018-05-29T10:37:15.653+02:00",
  "updated_at": "2018-05-30T22:00:01.960+02:00",
  "status": "Paid",
  "checked_in": true,
  "code": "00000001",
  "participant_id": 1,
  "ticket_type": {
    "id": 1,
    "description": {
      "sv": "Mattis Purus",
      "en": "Sollicitudin Ullamcorper"
      },
    "kind": "entrance"
  }
}
```

> If an error occurs, it returns JSON structured like this:

```json
{
    "error": "ticket not found"
}
```


Use this endpoint to update a Ticket.

### HTTP Request

`PUT https://invitepeople.com/api/v2/tickets/<TICKET_ID>`
<br>
`Content-Type: application/json`


### URL Parameters

Parameter | Description
--------- | -----------
**TICKET_ID** `required` | The ID of the Ticket.

### Returns

If successful it should return the updated Ticket object.

### Errors

Error | Description
--------- | -----------
ticket&nbsp;not&nbsp;found | The provided Ticket ID could not be found.