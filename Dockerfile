FROM isaitb/xml-validator:latest

ENV server.servlet.context-path /invoice
ENV validator.resourceRoot /validator/invoice/
COPY invoice /validator/invoice/