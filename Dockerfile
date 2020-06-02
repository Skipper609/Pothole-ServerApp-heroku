# FROM alpine:latest
# RUN apk add --no-cache python3-dev && pip3 install --upgrade pip
FROM python:latest
WORKDIR /usr/src/app
COPY . /app
COPY requirements.txt ./
RUN pip install --no-cache-dir numpy scipy pandas
RUN pip install --no-cache-dir -r requirements.txt
RUN pip install scikit-learn
RUN pip install tensorflow

COPY . .
# RUN apk update
# RUN apk add make automake gcc g++ subversion python3-dev


# RUN pip install pandas
# RUN pip install scipy

EXPOSE 5000

CMD [ "python", "./app.py" ]