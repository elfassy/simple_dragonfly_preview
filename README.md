# Dragonfly Image Preview

[![Code Climate](https://codeclimate.com/github/elfassy/simple_dragonfly_preview.png)](https://codeclimate.com/github/elfassy/simple_dragonfly_preview)

Easily add an image with preview to your forms. This will make your forms submit faster and allow the user to get feedback on how the image will look like. Oh, and you can skip the `multipart` attribute in your forms!

## Installation

Add this line to your application's Gemfile:
```ruby
gem 'simple_form'
gem 'dragonfly'

gem 'simple_dragonfly_preview'
```

And then execute:

    $ bundle


## Usage

```ruby
f.input :avatar, as: image_preview, size: "145x145#"
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
