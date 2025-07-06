# Simple Notes App for CloudOps Mastery Academy
This is a simple notes app built with React and Django.

## Requirements
1. Python 3.9
2. Node.js
3. React

## Installation
1. Clone the repository
```
git clone https://github.com/awslinuxdevops/django-pro-labs.git
```

2. Build the app
```
docker build -t online-note-app .
```

3. Run the app
```
docker run -d -p 8000:8000 online-note-app:latest
```

## Nginx

Install Nginx reverse proxy to make this application available

`sudo apt-get update`
`sudo apt install nginx`
