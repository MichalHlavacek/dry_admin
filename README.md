# DRYAdmin
I hate creating admin areas from scratch in every Rails app I make. Thus, one sunny afternoon I've sat down and created DRYAdmin - mountable admin engine that "just works" with whatever models you have.*

<sup>(*hopefully)</sup>

Don't Repeat Yourself - ever again.

**DISCLAIMER:** IT'S VERSION 0.1., WHICH MEANS THAT IT PROBABLY SHOULDN'T BE USED IN PRODUCTION ENVIRONMENT YET.

Ok, you have been warned.

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'dry_admin', group: :development
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install dry_admin
```
## Dependencies
DRYAdmin has currently three dependencies (apart from Rails itself). Bootstrap to make it look nice, Will Paginate to make Pagination work easily.

```ruby
  "bootstrap-sass", "~> 3.3"
  "will_paginate", "~> 3.1"
  "will_paginate-bootstrap", "~> 1"
```

## Usage
Usage is dead simple. Just drop this line into your config/routes.rb file and that's it.
```ruby
  mount DryAdmin::Engine => '/admin'
```
You can change mounting point to anything you like of course.
If you are using this gem and like it, get in touch with me - [@HlavacekMichal](https://twitter.com/hlavacekmichal). 
And if you feel very generous and want to support further development, you can <a href='https://ko-fi.com/A0482223' target='_blank'><img height='36' style='border:0px;height:36px;' src='https://az743702.vo.msecnd.net/cdn/kofi2.png?v=0' border='0' alt='Buy Me a Coffee at ko-fi.com' /></a>

## Contributing
If you want to add, customize, remove, change or polish anything, please open an issue and we can discuss that, and I'll most likely fix that until version 0.2.
For those who will be reading the source code, I apologize in advance. I made this in one sunny afternoon, and haven't find a time to properly refactor and beautify the code yet.

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
