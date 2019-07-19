FROM ubuntu:latest

USER root

WORKDIR /home/airflow/dags

# apt-get and wget install and update
RUN apt-get update && \
    apt-get install -y wget && \
    apt-get -y install python3-pip && \
    rm -rf /var/lib/apt/lists/*

# Install Airflow
RUN pip3 install --upgrade pip
RUN pip3 install apache-airflow


# Install Python 3 packages
RUN pip3 install \
    'pandas' \
    'numexpr' \
    'scipy' \
    'seaborn' \
    'scikit-learn' \
    'sympy' \
    'cython' \
    'patsy' \
    'statsmodels' \
    'cloudpickle' \
    'dill' \
    'dask' \
    'numba' \
    'bokeh' \
    'sqlalchemy' \
    'h5py' \
    'vincent' \
    'protobuf' \
    'xlrd' \
    'pandas-profiling' \
    'boto3' \
    'flask==1.0.1' \
    'jinja2<=2.10.0,>=2.7.3' \
    'werkzeug<0.15,>=0.14.1' \
    'psycopg2-binary'

EXPOSE 8080

ENTRYPOINT airflow initdb && airflow webserver -p 8080 && airflow scheduler
