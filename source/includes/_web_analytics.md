# Web Analytics

## Web Analytics Metrics & Properties

Access Web Analytics for all participant-facing event pages in InvitePeople using the metrics and properties below. The properties can be used for filtering and breaking down data.

### Metrics

Metric  | Description
--------- | -----------
visitors | The number of unique visitors.
visits | The number of visits/sessions.
pageviews | The number of pageview events.
bounce_rate | Bounce rate percentage.
visit_duration | Visit duration in seconds.

### Properties

Property | Description
--------- | -----------
entry_page | Page on which the visit session started (landing page).
exit_page | Page on which the visit session ended (last page viewed).
source | Visit source, populated from an url query parameter tag (`utm_source`, `source`, or `ref`) or the `Referer` HTTP header.
referrer | Raw Referer header without `http://`, `http://` or `www.`.
utm_medium | Raw value of the `utm_medium` query param on the entry page.
utm_source | Raw value of the `utm_source` query param on the entry page.
utm_campaign | Raw value of the `utm_campaign` query param on the entry page.
utm_content | Raw value of the `utm_content` query param on the entry page.
utm_term | Raw value of the `utm_term` query param on the entry page.
device | Device type. Possible values are `Desktop`, `Laptop`, `Tablet`, and `Mobile`.
browser | Name of the browser vendor. Most popular ones are `Chrome`, `Safari`, and `Firefox`.
browser_version | Version number of the browser used by the visitor.
os | Name of the operating system. Most popular ones are `Mac`, `Windows`, `iOS`, and `Android`. Linux distributions are reported separately.
os_version | Version number of the operating system used by the visitor.
country | ISO 3166-1 alpha-2 code of the visitor country.
region | ISO 3166-2 code of the visitor region.
city | GeoName ID of the visitor city.

## Aggregate Web Analytics

```shell
curl --get "https://invitepeople.com/api/v2/web_analytics/aggregate" \
  -d "event_ids[]=1" \
  -d "event_ids[]=2" \
  -d "start_date=2023-01-01" \
  -d "end_date=2023-12-31" \
  -d "metrics[]=visitors" \
  -d "metrics[]=pageviews" \
  -d "filters[device]=Mobile" \
  -d "filters[utm_source]=linkedin" \
  -H "Authorization: Bearer $TOKEN"
```

> The above command returns JSON structured like this:

```json
{
  "pageviews" : {
    "value" : 1984
  },
  "visitors" : {
    "value" : 564
  }
}
```

Use this endpoint to aggregate metrics over a certain time period.

### HTTP Request

`GET https://invitepeople.com/api/v2/web_analytics/aggregate`

### Query Parameters

Parameter | Type | Description
--------- | ---- | -----------
**event_ids[]**&nbsp;`required` | `array` | The IDs of the Events for which to fetch Web Analytics data.
**start_date**&nbsp;`required` | `string` | The start date of the time period. Should be a date string in ISO 8601 format.
**end_date**&nbsp;`required` | `string` | The end date of the time period. Should be a date string in ISO 8601 format.
**metrics[]**&nbsp;`required` | `array` | The metrics for which to fetch Web Analytics data.
filters[] | `object` | Filter the Web Analytics data by one or more properties. An object with property names as keys and preferred filter as values.

## Break down Web Analytics

```shell
curl --get "https://invitepeople.com/api/v2/web_analytics/breakdown" \
  -d "event_ids[]=1" \
  -d "event_ids[]=2" \
  -d "event_ids[]=3" \
  -d "start_date=2023-01-01" \
  -d "end_date=2023-12-31" \
  -d "metrics[]=visitors" \
  -d "property=country" \
  -d "filters[utm_medium]=social" \
  -H "Authorization: Bearer $TOKEN"
```

> The above command returns JSON structured like this:

```json
[
  {
    "country" : "NO",
    "visitors" : 2962
  },
  {
    "country" : "US",
    "visitors" : 984
  },
  {
    "country" : "GB",
    "visitors" : 976
  },
  {
    "country" : "SE",
    "visitors" : 518
  },
  {
    "country" : "DE",
    "visitors" : 155
  },
  {
    "country" : "CH",
    "visitors" : 148
  },
  {
    "country" : "DK",
    "visitors" : 145
  },
  {
    "country" : "FR",
    "visitors" : 111
  },
  {
    "country" : "NL",
    "visitors" : 111
  },
  {
    "country" : "ES",
    "visitors" : 85
  },
  {
    "country" : "AE",
    "visitors" : 71
  },
  {
    "country" : "HU",
    "visitors" : 60
  },
  {
    "country" : "GR",
    "visitors" : 48
  },
  {
    "country" : "UA",
    "visitors" : 1
  }
]
```

Use this endpoint to break down data by some property over a certain time period.

### HTTP Request

`GET https://invitepeople.com/api/v2/web_analytics/breakdown`

### Query Parameters

Parameter | Type | Description
--------- | ---- | -----------
**event_ids[]**&nbsp;`required` | `array` | The IDs of the Events for which to fetch Web Analytics data.
**start_date**&nbsp;`required` | `string` | The start date of the time period. Should be a date string in ISO 8601 format.
**end_date**&nbsp;`required` | `string` | The end date of the time period. Should be a date string in ISO 8601 format.
**metrics[]**&nbsp;`required` | `array` | The metrics for which to fetch Web Analytics data.
**property**&nbsp;`required` | `string` | The property to break down the Web Analytics data by.
filters[] | `object` | Filter the Web Analytics data by one or more properties. An object with property names as keys and preferred filter as values.

## Get Web Analytics time series

```shell
curl --get "https://invitepeople.com/api/v2/web_analytics/timeseries" \
  -d "event_ids[]=1" \
  -d "start_date=2024-05-01" \
  -d "end_date=2024-05-10" \
  -d "metrics[]=bounce_rate" \
  -d "metrics[]=visit_duration" \
  -H "Authorization: Bearer $TOKEN"
```

> The above command returns JSON structured like this:

```json
[
  {
    "bounce_rate" : 64,
    "date" : "2024-05-01",
    "visit_duration" : 264
  },
  {
    "bounce_rate" : 55,
    "date" : "2024-05-02",
    "visit_duration" : 412
  },
  {
    "bounce_rate" : 46,
    "date" : "2024-05-03",
    "visit_duration" : 74
  },
  {
    "bounce_rate" : 0,
    "date" : "2024-05-04",
    "visit_duration" : 487
  },
  {
    "bounce_rate" : 60,
    "date" : "2024-05-05",
    "visit_duration" : 270
  },
  {
    "bounce_rate" : 43,
    "date" : "2024-05-06",
    "visit_duration" : 1121
  },
  {
    "bounce_rate" : 42,
    "date" : "2024-05-07",
    "visit_duration" : 508
  },
  {
    "bounce_rate" : 50,
    "date" : "2024-05-08",
    "visit_duration" : 28
  },
  {
    "bounce_rate" : 71,
    "date" : "2024-05-09",
    "visit_duration" : 20
  },
  {
    "bounce_rate" : 29,
    "date" : "2024-05-10",
    "visit_duration" : 609
  }
]
```

User this endpoint to fetch a time series of data over a certain time period.

### HTTP Request

`GET https://invitepeople.com/api/v2/web_analytics/timeseries`

### Query Parameters

Parameter | Type | Description
--------- | ---- | -----------
**event_ids[]**&nbsp;`required` | `array` | The IDs of the Events for which to fetch Web Analytics data.
**start_date**&nbsp;`required` | `string` | The start date of the time period. Should be a date string in ISO 8601 format.
**end_date**&nbsp;`required` | `string` | The end date of the time period. Should be a date string in ISO 8601 format.
**metrics[]**&nbsp;`required` | `array` | The metrics for which to fetch Web Analytics data.
filters[] | `object` | Filter the Web Analytics data by one or more properties. An object with property names as keys and preferred filter as values.
