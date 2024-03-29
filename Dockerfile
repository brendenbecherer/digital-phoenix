FROM python:alpine
WORKDIR /app
COPY ./requirements.txt /app
RUN pip install -r requirements.txt
COPY . .
EXPOSE 80
CMD [ "python3", "digital-phoenix-app.py" ]