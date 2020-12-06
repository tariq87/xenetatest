FROM python:3.8.1-slim-buster
RUN mkdir -p /app 
COPY . /app/
WORKDIR /app
RUN pip install -r requirements.txt
ENTRYPOINT ["gunicorn"]
CMD ["-b", ":3000", "wsgi"]
EXPOSE 3000

