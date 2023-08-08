FROM ubuntu:22.04
MAINTAINER Mario Splivalo "mario at splivalo.hr"

RUN apt-get update -y && apt-get install -y python-pip python-dev
COPY ./requirements.txt /app/requirements.txt
WORKDIR /app
RUN pip install -r requirements.txt
COPY . /app
ENTRYPOINT [ "python" ]
CMD [ "simple.py" ]
