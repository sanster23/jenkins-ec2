# use a node base image
FROM python:3

# set maintainer
LABEL maintainer "shekhawatsanjay23@gmail.com"

ADD app.py /

RUN pip install flask

# set a health check
HEALTHCHECK --interval=5s \
            --timeout=5s \
            CMD curl -f http://127.0.0.1:8000 || exit 1

CMD ["python", "/app.py"]

# tell docker what port to expose
EXPOSE 8000