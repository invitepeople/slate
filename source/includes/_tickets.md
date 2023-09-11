# Tickets

## Ticket

The Ticket object represents a ticket belonging to a Participant. The ticket can provide access to the entire event or individual seminars.

### Properties

Property | Type | Description
--------- | ----------- | -----------
status | `string` | Possible values are `Paid` and `Reserved`. 
checked_in | `boolean` | Will return true if the Participant has checked in with the Ticket.
code | `string` | A generated 8 digit unique code.
paid_price | `string` | The price paid for the Ticket in the Event's currency. The value is formatted as a decimal number.
vat | `string` | The VAT paid for the Ticket in the Event's currency. The value is formatted as a decimal number.
external_id | `string` | An external ID from another system.

## Create a Ticket

```shell
curl "https://invitepeople.com/api/v2/participants/1/tickets" \
  -X POST \
  -H "Authorization: Bearer $TOKEN" \
  -H "Content-Type: application/json" \
  -d '{ "ticket_type_id": 1 }'
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
  "paid_price": "0.0",
  "vat": "0.0",
  "participant_id": 1,
  "external_id": null,
  "order": {
    "id": 1,
    "created_at": "2018-05-29T10:37:15.653+02:00",
    "updated_at": "2018-05-30T22:00:01.960+02:00",
    "status": "paid",
    "payment_method": null,
    "invoice_fee": null,
    "invoice_fee_vat": null,
    "reversed_vat": false,
    "vat": "0.0",
    "sum": "0.0",
    "currency": "SEK",
    "utm_params": {
      "utm_campaign": "Campaign",
      "utm_medium": "email",
      "utm_source": "email_sendout"
    }
  },
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
**PARTICIPANT_ID**&nbsp;`required` | The ID of the Participant.

### Parameters

Parameter | Type | Description
--------- | ----------- | -----------
**ticket_type_id**&nbsp;`required` | `integer` | The ID of the Ticket Type for the new Ticket.

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
  -H "Authorization: Bearer $TOKEN" \
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
  "paid_price": "0.0",
  "vat": "0.0",
  "participant_id": 1,
  "external_id": null,
  "order": {
    "id": 1,
    "created_at": "2018-05-29T10:37:15.653+02:00",
    "updated_at": "2018-05-30T22:00:01.960+02:00",
    "status": "paid",
    "payment_method": null,
    "invoice_fee": null,
    "invoice_fee_vat": null,
    "reversed_vat": false,
    "vat": "0.0",
    "sum": "0.0",
    "currency": "SEK",
    "utm_params": {
      "utm_campaign": "Campaign",
      "utm_medium": "email",
      "utm_source": "email_sendout"
    }
  },
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

Use this endpoint to retrieve a specific Ticket.

### HTTP Request

`GET https://invitepeople.com/api/v2/tickets/<ID>`

### URL Parameters

Parameter | Description
--------- | -----------
**ID**&nbsp;`required` | The ID of the Ticket.

## Update a Ticket

```shell
curl "https://invitepeople.com/api/v2/tickets/1" \
  -X PATCH \
  -H "Authorization: Bearer $TOKEN" \
  -H "Content-Type: application/json"\
  -d '{ "checked_in": true }'
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
  "paid_price": "0.0",
  "vat": "0.0",
  "participant_id": 1,
  "external_id": null,
  "order": {
    "id": 1,
    "created_at": "2018-05-29T10:37:15.653+02:00",
    "updated_at": "2018-05-30T22:00:01.960+02:00",
    "status": "paid",
    "payment_method": null,
    "invoice_fee": null,
    "invoice_fee_vat": null,
    "reversed_vat": false,
    "vat": "0.0",
    "sum": "0.0",
    "currency": "SEK",
    "utm_params": {
      "utm_campaign": "Campaign",
      "utm_medium": "email",
      "utm_source": "email_sendout"
    }
  },
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

Use this endpoint to update a Ticket.

### HTTP Request

`PATCH https://invitepeople.com/api/v2/tickets/<ID>`
<br>
`Content-Type: application/json`


### URL Parameters

Parameter | Description
--------- | -----------
**ID**&nbsp;`required` | The ID of the Ticket.

### Parameters

Parameter | Type | Description
--------- | ----------- | -----------
checked_in | `boolean` | Sets the check in status of the Ticket.

### Returns

If successfull it should return the updated Ticket object.

## Delete a Ticket

```shell
curl "https://invitepeople.com/api/v2/tickets/1" \
  -X DELETE \
  -H "Authorization: Bearer $TOKEN" \
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
  "paid_price": "0.0",
  "vat": "0.0",
  "participant_id": 1,
  "external_id": null,
  "order": {
    "id": 1,
    "created_at": "2018-05-29T10:37:15.653+02:00",
    "updated_at": "2018-05-30T22:00:01.960+02:00",
    "status": "paid",
    "payment_method": null,
    "invoice_fee": null,
    "invoice_fee_vat": null,
    "reversed_vat": false,
    "vat": "0.0",
    "sum": "0.0",
    "currency": "SEK",
    "utm_params": {
      "utm_campaign": "Campaign",
      "utm_medium": "email",
      "utm_source": "email_sendout"
    }
  },
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
    "error": "could not delete ticket"
}
```


Use this endpoint to delete a free Ticket.

### HTTP Request

`DELETE https://invitepeople.com/api/v2/tickets/<ID>`


### URL Parameters

Parameter | Description
--------- | -----------
**ID**&nbsp;`required` | The ID of the Ticket.


### Returns

If successfull it should return the deleted Ticket object.

### Errors

Error | Description
--------- | -----------
could&nbsp;not&nbsp;delete&nbsp;ticket | The ticket is not free and cannot be deleted.