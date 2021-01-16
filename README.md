# ruby-screensnaps

A simple ruby gem that allows you to easily interact with the screensnaps api

# Installation

Add this line to your application Gemfile

```ruby
gem 'screensnaps'
```

And then you can install it easily via `bundle`

```bash
bundle
```

Or you can just install yourself via:

```bash
gem install screensnaps
```

# Documentation

To get stared, you'll need an `api_key` and `user_id` to make requests, you can sign up for free at https://screensnaps.io.

## Initializing the Library

Create a new instance of the class to use in your code:

```ruby
client = Screensnaps.new(user_id: "USER_ID_HERE", api_key: "API_KEY")
```

## Methods

Refer to the documentation on https://screensnaps.io/docs/intro on how to make certain calls.

### `screenshots`

This will get the last 15 screenshots on your account.

```ruby
response = client.screenshots()
```

### `screenshot`

This will take a screenshot to a URL or HTML depending on your params

```ruby
response = client.screenshot({"url": "https://google.com"})
```

### `stats`

This is a ping to let you know the status of the service.

```ruby
response = client.status()
```

## Testing

You can run `rspec spec/screensnaps_spec.rb` to run then test. Make sure to create a local `.env` file with the contents of:

```bash
USER_ID=XXXX
API_KEY=XXXX
```

You can pull these from dashboard at https://screensnaps.io
