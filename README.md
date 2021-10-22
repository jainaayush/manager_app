# Manager application

This is a event driven application which uses `RabbitMQ` and `Bunny` plugin for publishing and accepting messages. Manager application displays all payment requests submitted by the contractor. The manager can accept or reject the payment request. The acceptance/rejection of payment request is done by manager app after which it publishes an event and the contractor app process the event to update the status for the contractor.

## Getting started

To get started with the app, first clone the repo and `cd` into the directory:

```
$ git clone https://github.com/jainaayush/manager_app.git
$ cd contractor
```

Then install the needed gems:

```
$ bundle install
```

Next, migrate the database:

```
$ rails db:migrate
```

Finally, run the server:

```
$ rails server
```

This uses `RabbitMQ` so we need to setup rabbitmq server at development sert but currently the app uses the cloudamqp RabbitMq cloud server URL so we can skip the installation at local. 
