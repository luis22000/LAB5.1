FROM node:8


WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 8000
CMD ["mysql -h localhost -u root -p 65544aA!"]
CMD ["create database Crud;"]
CMD ["use Crud; CREATE TABLE product(product_id INT(11) PRIMARY KEY AUTO_INCREMENT,product_name VARCHAR(200),product_price INT(11))ENGINE=INNODB;"]
CMD ["quit"]
CMD [ "node", "index" ]
