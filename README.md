# sonarqube

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
# Pylint deployment:
  Pylint is included in the sonarqube container and pylint executable configured to run python verification.
# Ability to run container in superuser mode:
  Dockerfile was modified to give user the ability to access container as a root to do sonarqube modifications on a fly.
  

#connection to Postgres
  ```Pylint installation and configuration 
