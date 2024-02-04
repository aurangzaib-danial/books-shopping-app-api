This is the Rails api that is consumed by my [e-books shopping](https://github.com/aurangzaib-danial/books-shopping-app-frontend) NextJS front-end.

## Development Setup
Before setting up the api server, you need to add AuthJS secret which is how tokens are being encrypted for secure communication between the front-end and the api. Please generate the AuthJS secret by following instructions on this [link](https://github.com/aurangzaib-danial/books-shopping-app-frontend).

The AuthJS credential needs to be added as following in your Rails credentials:

```yaml
# other secrets ...
authjs: your_secret
```

Make sure you have postgresql installed. Now run following commands for setting up the database and adding some dummy data.

```
rails db:create
rails db:schema:load
rails db:seed
```

Now start the api server. The front-end server will now be able to fetch data from your api.

```
rails s
```

## License
This project is released under the MIT License.
