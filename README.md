# Laravel TodoList Sample

Repository ini dibuat dengan laravel 9 untuk sebagai contoh pendukung perkuliahan

## Instalasi
- Clone repository ini
```
git clone https://github.com/dianprawira/laravel-todos.git
cd laravel-todos/
```
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