FROM isaitb/xml-validator:latest

ENV server.servlet.context-path /vcef
ENV validator.domain invoice
ENV validator.resourceRoot /validator/
COPY invoice /validator/invoice/