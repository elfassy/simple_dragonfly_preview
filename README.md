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
f.input :avatar, as: :image_preview, size: "145x145#"
```

### Strong Parameters
You'll also need to update your form's controller. For example, assuming a `User` model with an `avatar_uid` field, you'd need:
```ruby
User.new(params.require!(:users).permit(:retained_avatar, :remove_avatar, ... ))
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

#### Todo
* add spinner to show upload progress
* remove image link on top of image
* improve readme to show how to customize view and default image

