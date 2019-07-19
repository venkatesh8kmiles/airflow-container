# airflow-container
A containerized solution for Airflow, using Docker.

# Installation
Requires Docker. Update the build_and_run.sh to mount the correct dags volume from your local machine. This will mount 
the directory and provide access to the dags stored locally as well as persistence of changes and additions.

# Execution
Execute build_and_run.sh in the command prompt. This will build then run the image.

# Stopping
In the command prompt, 'docker ps' will show you the running containers. docker stop <CONTAINER ID> will kill the 
container, freeing the mapped port.