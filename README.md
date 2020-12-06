# Instructions and Caveats
## PreReqs(Tools of choice)
Docker: Docker version 17.03.1-ce-rc1 or higher
Docker Compose: docker-compose version 1.11.2 or higher
## Deploy Instructions
git clone git@github.com:tariq87/xenetatest.git
cd xenetatest
docker-compose up
The service would be available on http://127.0.0.1 as instructed
# Solution description
Separate Dockerfiles for web application and database applications can be found in rates and db folders respectively
Since it was required to run the application locally, for simplicity sake, I have chosen to run it on docker-compose. that locally builds the images from the dockerfiles and runs the services.
This could be easily extended and scaled by creating kubernetes manifests and deploy it on a Kubernetes cluster(which initially I was planning to do)
I have made changes to config.py and instead of hard-coding the values, I am fetching the values now from environment variables which are defined in a .env file

