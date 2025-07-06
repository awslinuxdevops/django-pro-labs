#!/bin/sh

set -e

echo " Waiting for MySQL to be ready..."

# Wait until MySQL is ready
while ! nc -z db 3306; do
  sleep 1
done

echo " MySQL is up. Running migrations..."

# Run migrations
python manage.py migrate --noinput

# Start gunicorn
exec gunicorn notesapp.wsgi:application --bind 0.0.0.0:8000

