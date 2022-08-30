FROM python:3.6-stretch
COPY . /app
WORKDIR /app
RUN \
 apt install  bash && \
 apt install  postgresql-libs && \
 apt install  --virtual .build-deps gcc musl-dev postgresql-dev
RUN pip install -r requirements.txt
EXPOSE 5000
CMD ["/bin/bash", "entrypoint.sh"]