# Profile Field Values

## Profile Field Value

The Profile Field Value object represents a custom field value for a Participant.

### Properties

Property | Type | Description
--------- | ----------- | -----------
value | `string` | The value of the Profile Field Value

## Create a Profile Field Value

```shell
curl "https://invitepeople.com/api/v2/participants/1/profile_field_values" \
  -X POST \
  -H "Authorization: Bearer $TOKEN" \
  -H "Content-Type: application/json" \
  -d '{ "profile_field_id": 1, "value": "Malesuada Sit Quam" }'
```

> The above command returns JSON structured like this:

```json
{
  "id": 1,
  "value": "Malesuada Sit Quam",
  "created_at": "2021-04-06T08:51:21.996+02:00",
  "updated_at": "2021-04-06T08:51:22.064+02:00",
  "profile_field": {
    "id": 1,
    "name": "fusce-ultricies-vestibulum-fermentum-pharetra-fringilla",
    "kind": "select",
    "translated_name": {
      "sv": "Fusce Ultricies Vestibulum",
      "en": "Fermentum Pharetra Fringilla"
    }
  },
  "profile": {
    "id": 1,
    "participant": {
      "id": 1
    }
  }
}
```

> If an error occurs, it returns JSON structured like this:

```json
{
  "error": "incorrect value",
  "possible_values": [
    "Malesuada Sit Quam",
    "Tortor Mattis",
    "Vehicula Tellus Magna"
  ]
}
```

Use this endpoint to create a Profile Field Value for a Participant.

### HTTP Request

`POST https://invitepeople.com/api/v2/participants/<PARTICIPANT_ID>/profile_field_values`
<br>
`Content-Type: application/json`

### URL Parameters

Parameter | Description
--------- | -----------
**PARTICIPANT_ID**&nbsp;`required` | The ID of the Participant.

### Parameters

Parameter | Type | Description
--------- | ----------- | -----------
**profile_field_id**&nbsp;`required` | `integer` | The ID of the Profile Field for the new Profile Field Value.
**value**&nbsp;`required` | `string` | The value for the new Profile Field Value.

### Returns

If successfull it should return the created Profile Field Value object.

### Errors

Error | Description
--------- | -----------
participant&nbsp;not&nbsp;found | The provided Participant ID could not be found.
profile&nbsp;field&nbsp;not&nbsp;found | The provided Profile Field ID could not be found.
value&nbsp;cannot&nbsp;be&nbsp;empty | No value provided.
profile&nbsp;field&nbsp;value&nbsp;already&nbsp;exists | A Profile Field Value is already created for this Profile Field and Participant. Profile Fields of kind `multi_select` may have multiple values per Profile Field.
incorrect&nbsp;value | The provided value is not part of the defined values of the Profile Field. Applies to Profile Fields of kind `select`, `radio_buttons`, and `multi_select`. Response should include `possible_values` with the defined values of the Profile Field.
value&nbsp;is&nbsp;not&nbsp;an&nbsp;integer | Applies to Profile Fields of kind `integer`. The value should be an integer.
value&nbsp;is&nbsp;not&nbsp;a&nbsp;valid&nbsp;date | Applies to Profile Fields of kind `date_field`. The value should be in ISO 8601 format.
profile&nbsp;field&nbsp;value&nbsp;could&nbsp;not&nbsp;be&nbsp;saved | The Profile Field Value could not be saved.

## Get a Profile Field Value

```shell
curl "https://invitepeople.com/api/v2/participants/1/profile_field_values/1" \
  -X GET \
  -H "Authorization: Bearer $TOKEN" \
```

> The above command returns JSON structured like this:

```json
{
  "id": 1,
  "value": "Malesuada Sit Quam",
  "created_at": "2021-04-06T08:51:21.996+02:00",
  "updated_at": "2021-04-06T08:51:22.064+02:00",
  "profile_field": {
    "id": 1,
    "name": "fusce-ultricies-vestibulum-fermentum-pharetra-fringilla",
    "kind": "select",
    "translated_name": {
      "sv": "Fusce Ultricies Vestibulum",
      "en": "Fermentum Pharetra Fringilla"
    }
  },
  "profile": {
    "id": 1,
    "participant": {
      "id": 1
    }
  }
}
```

Use this endpoint to retrieve a specific Profile Field Value.

The endpoint will return an array of objects for Profile Fields of kind `multi_select`.

### HTTP Request

`GET https://invitepeople.com/api/v2/participants/<PARTICIPANT_ID>/profile_field_values/<PROFILE_FIELD_ID>`

### URL Parameters

Parameter | Description
--------- | -----------
**PARTICIPANT_ID**&nbsp;`required` | The ID of the Participant.
**PROFILE_FIELD_ID**&nbsp;`required` | The ID of the Profile Field.

## Update a Profile Field Value

```shell
curl "https://invitepeople.com/api/v2/participants/1/profile_field_values/1" \
  -X PATCH \
  -H "Authorization: Bearer $TOKEN" \
  -H "Content-Type: application/json" \
  -d '{ "value": "Malesuada Sit Quam" }'
```

> The above command returns JSON structured like this:

```json
{
  "id": 1,
  "value": "Malesuada Sit Quam",
  "created_at": "2021-04-06T08:51:21.996+02:00",
  "updated_at": "2021-04-06T08:51:22.064+02:00",
  "profile_field": {
    "id": 1,
    "name": "fusce-ultricies-vestibulum-fermentum-pharetra-fringilla",
    "kind": "select",
    "translated_name": {
      "sv": "Fusce Ultricies Vestibulum",
      "en": "Fermentum Pharetra Fringilla"
    }
  },
  "profile": {
    "id": 1,
    "participant": {
      "id": 1
    }
  }
}
```

> If an error occurs, it returns JSON structured like this:

```json
{
  "error": "incorrect value",
  "possible_values": [
    "Malesuada Sit Quam",
    "Tortor Mattis",
    "Vehicula Tellus Magna"
  ]
}
```

Use this endpoint to update a Profile Field Value for a Participant.

Profile Fields of kind `multi_select` can not be updated using this endpoint. Use the Create and Delete endpoints to add or remove values.

### HTTP Request

`PATCH https://invitepeople.com/api/v2/participants/<PARTICIPANT_ID>/profile_field_values/<PROFILE_FIELD_ID>`
<br>
`Content-Type: application/json`

### URL Parameters

Parameter | Description
--------- | -----------
**PARTICIPANT_ID**&nbsp;`required` | The ID of the Participant.
**PROFILE_FIELD_ID**&nbsp;`required` | The ID of the Profile Field.

### Parameters

Parameter | Type | Description
--------- | ----------- | -----------
**value**&nbsp;`required` | `string` | The new value for the Profile Field Value.

### Returns

If successfull it should return the updated Profile Field Value object.

### Errors

Error | Description
--------- | -----------
participant&nbsp;not&nbsp;found | The provided Participant ID could not be found.
profile&nbsp;field&nbsp;not&nbsp;found | The provided Profile Field ID could not be found.
profile&nbsp;field&nbsp;value&nbsp;not&nbsp;found | The Profile Field Value could not be found.
profile field is multi select | The Profile Field is a `multi_select`, and cannot be updated.
value&nbsp;cannot&nbsp;be&nbsp;empty | No value provided.
profile&nbsp;field&nbsp;value&nbsp;already&nbsp;exists | A Profile Field Value with the same value is already created for this Profile Field and Participant.
incorrect&nbsp;value | The provided value is not part of the defined values of the Profile Field. Applies to Profile Fields of kind `select` and `radio_buttons`. Response should include `possible_values` with the defined values of the Profile Field.
value&nbsp;is&nbsp;not&nbsp;an&nbsp;integer | Applies to Profile Fields of kind `integer`. The value should be an integer.
value&nbsp;is&nbsp;not&nbsp;a&nbsp;valid&nbsp;date | Applies to Profile Fields of kind `date_field`. The value should be in ISO 8601 format.
profile&nbsp;field&nbsp;value&nbsp;could&nbsp;not&nbsp;be&nbsp;saved | The Profile Field Value could not be saved.

## Delete a Profile Field Value

```shell
curl "https://invitepeople.com/api/v2/participants/1/profile_field_values/3" \
  -X DELETE \
  -H "Authorization: Bearer $TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "id": 3,
  "value": "Tortor Matti",
  "created_at": "2021-04-06T08:51:21.996+02:00",
  "updated_at": "2021-04-06T08:51:22.064+02:00",
  "profile_field": {
    "id": 1,
    "name": "fusce-ultricies-vestibulum-fermentum-pharetra-fringilla",
    "kind": "select",
    "translated_name": {
      "sv": "Fusce Ultricies Vestibulum",
      "en": "Fermentum Pharetra Fringilla"
    }
  },
  "profile": {
    "id": 1,
    "participant": {
      "id": 1
    }
  }
}
```

Use this endpoint to delete a specific Profile Field Value.

### HTTP Request

`DELETE https://invitepeople.com/api/v2/participants/<PARTICIPANT_ID>/profile_field_values/<PROFILE_FIELD_VALUE_ID>`

### URL Parameters

Parameter | Description
--------- | -----------
**PARTICIPANT_ID**&nbsp;`required` | The ID of the Participant.
**PROFILE_FIELD_VALUE_ID**&nbsp;`required` | The ID of the Profile Field Value.

### Returns

If successfull it should return the deleted Profile Field Value object.