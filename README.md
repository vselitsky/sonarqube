# Sonarqube

SonarQube is an open source platform for continuous inspection of code quality.

# How to use this image

Here you'll find the Docker image for the Community Edition of SonarQube 7.9.1 with Postgres in the backend support.

## Docker Host Requirements

Because SonarQube uses an embedded Elasticsearch, make sure that your Docker host configuration complies with the [Elasticsearch production mode requirements](https://www.elastic.co/guide/en/elasticsearch/reference/current/docker.html#docker-cli-run-prod-mode) and [File Descriptors configuration](https://www.elastic.co/guide/en/elasticsearch/reference/current/file-descriptors.html).

For example, on Linux, you can set the recommended values for the current session by running the following commands as root on the host:

```console
sysctl -w vm.max_map_count=262144
sysctl -w fs.file-max=65536
ulimit -n 65536
ulimit -u 4096
```

Sonarqube official container was modified to include the extra configuration: 

## Pylint deployment:
  Pylint is included in the sonarqube image and pylint executable is configured to run for python verification.
## Ability to run container in superuser mode:
  The official Dockerfile was modified to give user the ability to access container as a root to do sonarqube config modifications on a fly.
## Sonarqube image build
  To build sonarqube image include sonarqube config changes to docker/sonar.properties and run
  ```console
  <path>/sonarqube$ make build
  ```
## Sonarqube deployment
  For the ease of the deployment docker-compose.yml was created to start sonarqube and Postgres containers.
  Just simply run:
  ```console
  <path>/sonarqube$ make deploy
  ```
  Sonarqube will be running on localhost:9000. To modify the port please update docker-compose host port value for Sonarqube service.
  By default you can login as `admin` with password `admin`, see [authentication documentation](https://docs.sonarqube.org/latest/instance-administration/security/).
  
  For permanent configuration changes sonar.properties file was included in the distribution. That file can be modified with permanent configuration changes and will be included in the sonarqube image.

## Sonarqube uninstall
  To uninstall sonarqube and postgres containers please run:
  ```console
  <path>/sonarqube$ make destroy
  ```
 
## Administration

The administration guide can be found [here](https://redirect.sonarsource.com/doc/administration-guide.html).

  
