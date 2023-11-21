# app/Dockerfile

FROM python:3.9-slim

WORKDIR /app

RUN apt-get update && apt-get install -y \
    build-essential \
    curl \
    software-properties-common \
    git \
    && rm -rf /var/lib/apt/lists/*

RUN pip3 install --upgrade pip
#RUN git clone https://github.com/streamlit/streamlit-example.git .
COPY requirements.txt /tmp/requirements.txt
COPY ./whl/*.whl /tmp/
RUN pip3 install -v -r /tmp/requirements.txt --find-links=/tmp/
#RUN pip3 install -v -r /tmp/requirements.txt
#EXPOSE 8501

EXPOSE 8502

HEALTHCHECK CMD curl --fail http://localhost:8502/

ENTRYPOINT ["streamlit", "run", "benchmark_index.py", "--server.port=8502", "--server.address=0.0.0.0"]
