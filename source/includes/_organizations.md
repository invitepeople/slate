# Organizations

## Organization

The Organization object represents an organization in InvitePeople. When calling the API you will authenticate on behalf of an Organization and will get access to all Events and Participants under that Organization.

### Properties

Property | Type | Description
--------- | ----------- | -----------
name | `string` | The name of the Organization.
description | `string` | A description of the Organization.
client_id | `string` | The ID used for API authentication of the Organization.

## Get your Organization

```shell
curl "https://invitepeople.com/api/v2/organizations/me" \
  -H "Authorization: Bearer TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "id": 1,
  "name": "Dolor Ligula",
  "description": "Etiam porta sem malesuada magna mollis euismod.",
  "created_at": "2021-04-06T08:51:21.996+02:00",
  "client_id": "20e8a24d-c69f-4c3b-9c2e-e22941c119a8"
}
```

Use this endpoint to retrieve your own organization.

### HTTP Request

`GET https://invitepeople.com/api/v2/organizations/me`
