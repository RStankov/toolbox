# CarrierWave Uploader spec helper

A minor helper for testing CarrierWave uploaders

## Installation

* copy ```uploader_spec_helper.rb``` to ```spec/support/uploader_helper.rb```
* add ```config.include  SpecSupport::UploaderHelper, type: :uploader``` to your ```spec_helper.rb```


## Usage

```ruby
describe SpeakerPhotoUploader, type: :uploader do
  uploader('photo.jpg') { PhotoUploader.new create(:event), :photo }

  it "has a version - thumb 80x80" do
    expect(uploader.thumb).to have_dimensions 80, 80
  end
end
```
