# MyPushbullet

This is a gem to run in a Rails project to connect and send push notifications to your Android and browser (Firefox and Chrome) via [Pushbullet](https://www.pushbullet.com). If you don't have the app installed in your mobile, you should.


## Usage 

1. Install the Gem
1. Add the API Key
1. List the Devices
1. Push a note


## Installing

As a regular ruby gem, add this entry in your Gemfile:

    gem 'my_pushbullet'

and then

    bundle install



## Coding

### Configuring

    push = MyPush.new :token => "YOUR API_KEY"
    
    
### Listing devices    
    
    push.devices


### Sending a note


    push = MyPush.new :token => "YOUR API_KEY"
    push.push :type => MyPush::PUSH_TYPE_NOTE, 
              :title => "Message Title", 
              :body => "Body content...", 
              :iden => "YOUR DEVICE IDENTIFICATION"




## TODO

1. send a link
2. send an address
3. send a list
4. send a file


- - - 

## License

Copyright 2014 Marcio Mangar (http://about.me/mangar)

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
