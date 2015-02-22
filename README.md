# recursive_locking

This is to demonstrate an issue with Rails and Rack::Lock when trying to use Rack::MockRequest in the test environment. To reproduce:

```sh
bundle install

bundle exec rake test
```
