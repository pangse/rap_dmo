# SAP RAP DMO Package Common

This repository contains a demo package for SAP RESTFUL ABAP Programming Model (RAP) demonstrating best practices for building modern SAP applications.

## Overview

The RAP DMO (Demo) package showcases a complete travel booking application built using the RESTFUL ABAP Programming Model. It includes:

- **CDS Data Models**: Interface and consumption views for Travel and Booking entities
- **Behavior Definitions**: Business logic implementation with managed scenario
- **Service Definitions**: OData V4 service exposure
- **UI Annotations**: Fiori Elements metadata for automatic UI generation

## Structure

```
src/
├── data/                  # CDS Views (Data Models)
│   ├── zi_rap_travel_dmo.ddls.asddls       # Travel Interface View
│   ├── zi_rap_booking_dmo.ddls.asddls      # Booking Interface View
│   ├── zc_rap_travel_dmo.ddls.asddls       # Travel Projection View
│   └── zc_rap_booking_dmo.ddls.asddls      # Booking Projection View
├── behavior/              # Behavior Definitions
│   ├── zi_rap_travel_dmo.bdef.asbdef       # Travel Behavior (Interface)
│   └── zc_rap_travel_dmo.bdef.asbdef       # Travel Behavior (Projection)
├── service/               # Service Definitions
│   └── zui_rap_travel_dmo.srvd.asrvd       # OData Service Definition
└── metadata/              # UI Annotations
    ├── zc_rap_travel_dmo.ddlx.asddlxs      # Travel UI Metadata
    └── zc_rap_booking_dmo.ddlx.asddlxs     # Booking UI Metadata
```

## Features

### Travel Management
- Create, Read, Update, Delete (CRUD) operations for travel records
- Associated bookings management
- Agency and customer associations
- Currency handling

### Booking Management
- Flight booking details
- Carrier and connection information
- Price calculation
- Date management

## Prerequisites

- SAP BTP ABAP Environment or SAP S/4HANA Cloud
- ABAP Development Tools (ADT) in Eclipse
- Access to `/DMO/` package (SAP Flight Reference Scenario)

## Installation

This package can be installed using [abapGit](https://abapgit.org/):

1. Create a new package in your ABAP system
2. Link the package to this repository using abapGit
3. Pull the objects
4. Activate all objects

## Usage

After installation, activate the service binding for `ZUI_RAP_TRAVEL_DMO` to expose the OData V4 service. The service can then be consumed by:

- SAP Fiori Elements applications
- Custom SAPUI5 applications
- External REST clients

## Key Concepts Demonstrated

- **Managed Scenario**: RAP handles data persistence automatically
- **Composition**: Parent-child relationship between Travel and Booking
- **Associations**: Relationships to reference data (Agency, Customer, etc.)
- **Projections**: Separation of interface and consumption layers
- **UI Annotations**: Metadata-driven UI generation

## License

This project is licensed under the Apache License 2.0 - see the [LICENSE](LICENSE) file for details.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## References

- [SAP RAP Documentation](https://help.sap.com/docs/btp/sap-abap-restful-application-programming-model)
- [SAP Flight Reference Scenario](https://github.com/SAP-samples/abap-platform-refscen-flight)

## Support

For issues and questions, please use the [GitHub Issues](https://github.com/pangse/rap_dmo/issues) page.
