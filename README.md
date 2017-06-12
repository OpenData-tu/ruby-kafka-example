# Ruby Kafka producer/consumer example

This code is just an example on how to use Kafka. This code supposes that you are running Kafka container on the default docker-machine. As described in [Run Kafka locally](https://github.com/OpenData-tu/documentation/wiki/Run-Kafka-locally) wiki page.

That happens here `%x[docker-machine ip]`. Look at the raw #2 in the `producer.rb` file.


```ruby
kafka = Kafka.new(seed_brokers: ["#{%x[docker-machine ip].rstrip}:9092"])
...
```

Read more about [ruby-kafka](https://github.com/zendesk/ruby-kafka#consuming-messages-from-kafka)  gem.