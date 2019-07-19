#!/usr/bin/env bash

docker build --tag=airflow .

docker run -p 8080:8080 -v /Users/stevenpurcell/ImageVolumes/Airflow/dags:/root/airflow/dags --restart unless-stopped airflow &