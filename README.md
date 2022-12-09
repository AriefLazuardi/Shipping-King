# Laravel TodoList Sample

- Jalankan composer install
```
composer install
```

- Konfigurasi file `.env`
- Jalankan migration
```
php artisan migrate
```
- Jalankan Seeder
```
php artisan db:seed
php artisan db:seed --class=TaskSeeder
```

## Jalankan server
```
php artisan serve --port=2022
```

## Menggunakan Ngrok
```
ngrok config add-authtoken tokenanda
ngrok http 2022
```
