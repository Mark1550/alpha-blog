### Bootstrap

To install bootstrap, I followed these steps:

1. Uncomment

    ```
    gem "sassc-rails"
    ```

    in the GemFile.

2. Add

    ```
    gem "bootstrap", "~> 5.2.0"
    gem 'jquery-rails'
    ```

    after the gem rails.

3. Run

    ```
    bundle install
    ```

4. Change the extension from app/assets/styleshetts/application.css to .scss.

5. Write

    ```
    @import "bootstrap";
    ```

    in the app/assets/styleshetts/application.scss

6. Run

    ```
    rails assets:precompile
    ```

7. Add

    ```
    Rails.application.config.assets.precompile += %w(bootstrap.min.js popper.js)
    ```

    in config.initializers/assets.rb

8. Add

    ```
    pin "popper", to: 'popper.js', preload: true
    pin "bootstrap", to:'bootstrap.min.js', preload: true
    ```

    to config/importmap/rb

9. Add

    ```
    import "popper"
    import "bootstrap"
    ```

    to app/javascript/application.js

Obs: to update css, we need to stop the server and run

```
    rails assets:precompile
```
then we can start the server again.

10. if some jquery function doesnt work, add this line to app/views/layouts/application.html.erb in the body tag

```
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
```