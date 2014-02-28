# Rajasms

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'rajasms'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rajasms

## Usage
	$ irb
	> require 'rajasms'
	> client = Rajasms::Client.new('username', 'password', 'apikey')
	> client.reguler('08123456789', 'my sms message') #=> {:code=>"0", :data=>"10643917"}
	> client.status('10643917', true) #=> {:code=>"0", :data=>"Delivered"}
	> client.masking('08123456789', 'message special with masking') #=> {:code=>"0", :data=>"10643919"}
	> client.status('10643919') #=> {:code=>"0", :data=>"Delivered"}

## Contributing

1. Fork it ( http://github.com/fajarmf/rajasms/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
