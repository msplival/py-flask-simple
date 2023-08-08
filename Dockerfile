FROM ubuntu:22.04
MAINTAINER Mario Splivalo "mario at splivalo.hr"

RUN apt-get update -y && apt-get install -y python3-pip
COPY ./requirements.txt /app/requirements.txt
WORKDIR /app
RUN pip install -r requirements.txt
COPY . /app
ENTRYPOINT [ "python3" ]
CMD [ "simple.py" ]
