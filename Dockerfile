from alpine:latest
RUN apk add --no-cache py3-pip \
    && pip3 install --upgrade pip
RUN pip install Flask==2.0.3
RUN pip install Jinja2==3.1.1
WORKDIR /app
COPY . /app

RUN pip3 --no-cache-dir install -r requirements.txt

EXPOSE 5000

ENTRYPOINT ["python3"]
CMD ["helloworld.py"]
