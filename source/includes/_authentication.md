# Authentication

## Get API token

```shell
curl "https://invitepeople.com/api/v2/authentication/token" \
  -X POST \
  -F "client_id=$CLIENT_ID"  \
  -F "client_secret=$CLIENT_SECRET" 
```

> The above command returns JSON structured like this:

```json
{
  "token": "eyJhbGciOiIUI1NiJ9.eyJjbDllbnRfaWQi8I3NzVlNWQzC0zMTNkLTRkZItYj5ZS1iMUTAwNdZjY2YiLCJleHAiOjE2NzzMTQwMDV1.FzoyxZ5CbLB61hijd53L3wC-JFIJS7UTHpbw"
}
```

Use this endpoint to retrieve an API token. The token is valid for 24 hours.

### HTTP Request

`POST https://invitepeople.com/api/v2/authentication/token`

### Query Parameters

Parameter | Description
--------- | -----------
**client_id**&nbsp;`required` | Your organization's Client ID.
**client_secret**&nbsp;`required` | Your organization's generated Client secret.

## Authorize

```shell
curl "https://invitepeople.com/api/v2/endpoint" \
  -H "Authorization: Bearer $TOKEN"
```

InvitePeople expects for the API token to be included in all API requests to the server in a header that looks like the following:

`Authorization: Bearer TOKEN`

<aside class="notice">
You must replace <code>TOKEN</code> with your token.
</aside>