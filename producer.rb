require "kafka"

kafka = Kafka.new(
  # At least one of these nodes must be available:
  seed_brokers: ["#{%x[docker-machine ip].rstrip}:9092"],
)

# Instantiate a new producer.
producer = kafka.producer

# Add a message to the producer buffer.
producer.produce("hello1", topic: "greetings")

# Deliver the messages to Kafka.
producer.deliver_messages