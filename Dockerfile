FROM isaitb/xml-validator:latest

ENV spring.config.location /validator/invoice/
COPY invoice /validator/invoice/