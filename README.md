# Laravel Vuejs Boiler plate
<p>Project set up for laravel and vuejs</p>

## Setup procedure
- Create new laravel project. If you are not sure on how to, check the laravel documentation
- Install the laravel frontend scaffolding. Follow the steps below:
- ```composer require laravel/ui```
- ```php artisan ui vue```
- ```npm install```
- ```npm run dev``` or ```npm run watch``` to listen for file changes and compile assets immediately
- ```npm install vue-router vue-axios --save``` to be able to use the vue routes and axios to perform http requests

## Using this boiler
<p>To use this boiler plate or cloning this repository, follow these steps:</p>

- Clone / Download repository
- ```composer install```
- ```composer update```
- ```npm install```
- Copy ```.env.example``` details and paste them into a new file called ```.env```
- ```php artisan key:generate```

### Update the laravel routes (web.php)
<pre><code>
Route::get('{any}', function () {
    return view('app');
})->where('any', '.*');
</code></pre>
- laravel comes with a default ```welcome.blade.php``` under views, rename it to app.blade.php or you can leave it as ```welcome.blade.php``` but dont forget to update the ```web.php```

- To fetch data from the laravel application, write the routes in the ```api.php```
- The javascript files are found under ```resources/js```. This is where you will define your components, routes and app.js main file.

### Preparing for production
- Run ```npm run production```
- Clear cache ```php artisan cache:clear```
- not the ```.version();``` in the ```webpack.mix.js```. Helps to avoid browser caching in production
- or you can specify versioning for only production .i.e.
<pre><code>
if (mix.inProduction()) {
    mix.version();
}
</code></pre>

## Using Docker with this boilerplate.
- Copy and paste the Dockerfile in the project root folder into your project root.
- To build the docker image, in your terminal run ```docker build -t your_image_name .``` <b>Dont forget the ```.``` at the end of the command</b>
- To serve or run your image, in your terminal run ```docker run -p 8080:8080 your_image_name``` where ```8080``` is the port exposed from the docker file.
