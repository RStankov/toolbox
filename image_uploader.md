# Matcher for matching json responses

## Installation

* copy `image_uploader.rb` to `app/models/uploaders/image_uploader.rb`

## Usage

```ruby
class PhotoImageUploader < ImageUploader
  version :main

  version :thumbnail do
    process resize_to_fill: [250, 180]
  end

end
```

## Notice

`Feature.s3_uploads` indicates if what store use are using. In general this class just easy to get start with and should be adjusts to application specific needs

