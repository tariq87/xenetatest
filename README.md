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

## Answers to Questions:
1) How would you design the system?
A system with sporadic loads should be capable to scale when there's a surge in incoming requests. Keeping that in mind, we should keep the database layer in a multi-master architecture(AWS Rds) and also redirect the read operations to read-replicas. For app layer to scale, we run it in a kubernetes deployment, exposed by a service. The number of pods scale automatically inside a deployment.
2) To monitor such a system, we can have an automation/scripts that talks cloudwatch/anyother monitoring tool like TICK, and triggers a scale-out event based on the load.
3) Bottlenecks like load can be addressed by doing capacity planning before rollouts, proper instance sizes should be select with enough memory and cpus.

##Additional Questions
1) The above design can actually addresses this issue.
2) Kubernetes fecilitates rolling updates without distruption of service
3) This can be easily done by using kubernetes manifests and terraform
- Architecture image is provided
