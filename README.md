# README

```bash
$ rails new . -n ActiveAdminDemo -c tailwind -a propshaft --skip-test --skip-system-test

$ bin/rails tailwindcss:install
$ bin/rails generate active_admin:assets
$ mv tailwind-active_admin.config.js config
$ cat config/tailwind-active_admin.config.js | sed 's/require(`@activeadmin\/activeadmin\/plugin`)/require(`${activeAdminPath}\/plugin.js`)/g' > config/tailwind-active_admin.config.js
$ bin/bundle binstub tailwindcss-rails
$ bin/rails generate active_admin:views
$ echo "active_admin: bin/rails active_admin:watch" > Procfile.dev

$ vim lib/tasks/active_admin.rake
$ vim config/initializers/active_admin.rb

$ rails g model button clicked:boolean clicked_at:timestamp
$ rails generate active_admin:resource Button
```
