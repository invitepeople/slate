# Profile Fields

## Profile Field

The Profile Field object represents a custom field type for an Event.

### Properties

Property | Type | Description
--------- | ----------- | -----------
name | `string` | A generated name for the Profile Field.
kind | `string` | Possible values are `text_field`, `text_area`, `select`, `radio_buttons`, `multi_select`, `integer`, `boolean` and `date_field`. 
values | `array` | The values set up for Profile Fields of kind `select`, `radio_buttons` or `multi_select`. 
translated_name | `object` | The name of the Profile Field. An object with the Event's language codes as keys and the translated names as values.

## Get all Profile Fields

```shell
curl "https://invitepeople.com/api/v2/events/1/profile_fields" \
  -H "Authorization: Bearer TOKEN"
```

> The above command returns JSON structured like this:

```json
[
  {
    "id": 1,
    "name": "fusce-ultricies-vestibulum-fermentum-pharetra-fringilla",
    "kind": "select",
    "values": [
      "Malesuada Sit Quam",
      "Tortor Mattis",
      "Vehicula Tellus Magna"
    ],
    "translated_name": {
      "sv": "Fusce Ultricies Vestibulum",
      "en": "Fermentum Pharetra Fringilla"
    }
  },
  {
    "id": 2,
    "name": "bibendum-tellus-mollis-fermentum",
    "kind": "text_field",
    "values": [],
    "translated_name": {
      "sv": "Bibendum Tellus",
      "en": "Mollis Fermentum"
    }
  }
]
```

Use this endpoint to retrieve all Profile Fields for an Event.

### HTTP Request

`GET https://invitepeople.com/api/v2/events/<EVENT_ID>/profile_fields`

### URL Parameters

Parameter | Description
--------- | -----------
**EVENT_ID** `required` | The ID of the Event.