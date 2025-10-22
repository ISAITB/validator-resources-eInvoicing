# Introduction

The current repository defines the configuration of the [eInvoicing validator](https://www.itb.ec.europa.eu/invoice/upload) provided by the [Interoperability Test Bed](https://interoperable-europe.ec.europa.eu/collection/interoperability-test-bed-repository/solution/interoperability-test-bed),
that allows validation of electronic invoices against the [official eInvoicing-EN16931 artefacts](https://github.com/ConnectingEurope/eInvoicing-EN16931). This validator is a configuration of the Test Bed's [XML validator](https://github.com/ISAITB/xml-validator).

The service is accessible:
* Via UI at https://www.itb.ec.europa.eu/invoice/upload
* Via REST API at https://www.itb.ec.europa.eu/xml/swagger-ui/index.html (use "invoice" when prompted for a "domain")
* Via SOAP API at https://www.itb.ec.europa.eu/invoice/api/validation?wsdl

# Configuration

The validator's configuration is located under `invoice`, and specifically within file `application.properties`. Any changes merged to this repository result in the live service being updated within 1-2 minutes.

# Running your own validator

You can replicate this validator on your own environment by following these steps:
1. Clone the current repository (in e.g. `MY_LOCAL_REPO`).
2. Start a new XML validator instance by using the [isaitb/xml-validator](https://hub.docker.com/r/isaitb/xml-validator) Docker image, and providing the repository root folder as the validator's resource root.

```
docker run -d --name my-validator -p 8080:8080 \
             -v /MY_LOCAL_REPO:/validator/resources/ \
             -e validator.resourceRoot=/validator/resources/ \
             isaitb/xml-validator
```

Using the above command your validator will be available:
* Via UI at http://localhost:8080/json/geojson/upload
* Via REST API: http://localhost:8080/json/swagger-ui/index.html (use "geojson" when prompted for a "domain")
* Via SOAP API: http://localhost:8080/json/soap/geojson/validation?wsdl

# Licence

This configuration is shared using the [European Union Public Licence (EUPL) version 1.2](https://interoperable-europe.ec.europa.eu/collection/eupl/eupl-text-eupl-12).

# Legal notice

The authors of this repository and the resulting validator waive any and all liability linked to its usage or the interpretation of its results. In terms of data, the resulting validator does not harvest, collect or process in any way data that could be linked to the user or 
workstation.

# Contact

To get in touch for feedback or questions please send an email to [DIGIT-ITB@ec.europa.eu](mailto:DIGIT-ITB@ec.europa.eu).

