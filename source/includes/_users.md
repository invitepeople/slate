# Users

## User

The User object represents an InvitePeople User.

### Properties

| Property  | Type     | Description                                                                     |
|-----------|----------|---------------------------------------------------------------------------------|
| email     | `string` | The email of the User.                                                          |
| mobile    | `string` | The mobile phone number of the User in international format, eg. `46700000000`. |
| lang      | `string` | The language code of the User. Eg. `en`, `de`, `se`, `fr`, `nb`.                |
| time_zone | `string` | A string representing the time zone of the User, eg. `Stockholm`.               |

## Get a User

```shell
curl "https://invitepeople.com/api/v2/users/1" \
  -H "Authorization: Bearer $TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "id": 1,
  "email": "amet@invitepeople.com",
  "lang": "en",
  "time_zone": "Berlin",
  "mobile": "46700000000",
  "participants": [
    {
      "id": 1,
      "created_at": "2018-04-11T14:56:28.719+02:00",
      "updated_at": "2019-09-30T08:46:37.416+02:00",
      "status": "confirmed",
      "visible": true,
      "bookable": true,
      "checked_in": true,
      "external_id": "134",
      "login_link": "https://invitepeople.com/40f010e3-f04a-47be-9531-7857892f557a/login/c599085e-fd53-4a7a-9354-893502bc5f22",
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
        "honorific_title": null,
        "additional_title": null,
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
          "paid_price": "0.0",
          "vat": "0.0",
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
        },
        {
          "id": 2,
          "created_at": "2018-08-21T16:10:23.969+02:00",
          "updated_at": "2018-10-11T14:00:16.147+02:00",
          "status": "Paid",
          "checked_in": true,
          "code": "00000002",
          "paid_price": "0.0",
          "vat": "0.0",
          "external_id": null,
          "order": {
            "id": 2,
            "created_at": "2018-08-21T16:10:23.969+02:00",
            "updated_at": "2018-10-11T14:00:16.147+02:00",
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
          "paid_price": "0.0",
          "vat": "0.0",
          "external_id": null,
          "order": {
            "id": 3,
            "created_at": "2018-08-21T16:17:40.098+02:00",
            "updated_at": "2018-10-11T15:36:33.921+02:00",
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
      ],
      "event": {
        "id": 1,
        "name": "Sollicitudin Lorem",
        "created_at": "2017-11-20T13:55:42.425+01:00",
        "updated_at": "2018-02-14T13:15:36.789+01:00",
        "country": "SE",
        "address": "Lorem Dolor 36",
        "zip": "123 45",
        "city": "Sollicitudin",
        "place": "Condimentum Vulputate",
        "description": {
          "sv": "<p>Maecenas faucibus mollis interdum. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>",
          "en": "<p>Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh.</p>"
        },
        "start_time": "2017-05-31T00:00:00.000+02:00",
        "statistics": {
          "participants": {
            "admin_disabled": 10,
            "confirmed": 1235,
            "new": 567
          }
        },
        "end_time": "2017-06-02T23:59:00.000+02:00",
        "lang": "sv",
        "organizer": {
          "id": 1,
          "name": "Magna",
          "description": {
            "sv": "Vulputate Elit Cras Tristique Quam",
            "en": "Nibh Sollicitudin Egestas Risus Bibendum"
          },
          "email": "sollicitudin@invitepeople.com",
          "website": "https://invitepeople.com/sollicitudin/"
        },
        "custom_event_fields_data" : {
          "ut_enim_ad": "Qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non."
          "nemo_enim_ipsam": "Laudantium",
        },
        "data_minimization_status" : null,
        "department" : {
          "id": 1,
          "external_id": null,
          "name": "Perspiciatis"
        },
        "event_template" : {
          "id": 1,
          "name": "Voluptas nulla"
        },
        "event_images" : [
          {
            "kind": "share_image",
            "url": "http://storage.invitepeople.com/000/000/share_image.png"
          }
        ]
      }
    }
  ]
}
```

Use this endpoint to retrieve a specific User, having Participants for Events within the Organization. 

Call with either User `ID` or `email`.

### HTTP Request

`GET https://invitepeople.com/api/v2/users/<ID>`<br />
`GET https://invitepeople.com/api/v2/users/<EMAIL>`

### URL Parameters

| Parameter         | Description                                           |
|-------------------|-------------------------------------------------------|
| **ID**&nbsp;`mutually exclusive`    | The ID of the User.            |
| **EMAIL**&nbsp;`mutually exclusive` | The email address of the User. |