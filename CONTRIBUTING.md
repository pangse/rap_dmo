# Contributing to SAP RAP DMO Package

Thank you for your interest in contributing to this project! We welcome contributions from the community.

## How to Contribute

### Reporting Issues

If you find a bug or have a suggestion for improvement:

1. Check if the issue already exists in [GitHub Issues](https://github.com/pangse/rap_dmo/issues)
2. If not, create a new issue with a clear title and description
3. Include steps to reproduce (for bugs)
4. Include your environment details (SAP system version, etc.)

### Submitting Changes

1. Fork the repository
2. Create a new branch for your feature or bugfix
3. Make your changes following the coding guidelines below
4. Test your changes thoroughly
5. Commit your changes with clear commit messages
6. Push to your fork and submit a pull request

## Coding Guidelines

### Naming Conventions

- Use `Z` prefix for custom objects (Z-namespace)
- Follow SAP naming conventions:
  - `ZI_*` for interface views (CDS)
  - `ZC_*` for consumption/projection views (CDS)
  - `ZBP_*` for behavior implementation classes
- Use descriptive names that reflect the object's purpose

### ABAP Development

- Follow ABAP Clean Code principles
- Use CamelCase for identifiers
- Add comments for complex logic
- Use proper indentation (2 spaces)

### CDS Views

- Always specify access control annotations
- Include EndUserText labels
- Document associations
- Use proper data types

### Behavior Definitions

- Implement proper validation
- Handle authorization checks
- Use meaningful messages
- Test all CRUD operations

## Code Review Process

All submissions require review. We use GitHub pull requests for this purpose.

1. Submit your pull request
2. Wait for review feedback
3. Address any comments or requested changes
4. Once approved, your changes will be merged

## Testing

- Test all changes in a development system
- Verify that existing functionality still works
- Include test scenarios in your pull request description

## Documentation

- Update README.md if you add new features
- Add inline documentation for complex code
- Update this CONTRIBUTING.md if you change the contribution process

## License

By contributing, you agree that your contributions will be licensed under the Apache License 2.0.

## Questions?

Feel free to ask questions in the [GitHub Issues](https://github.com/pangse/rap_dmo/issues) section.

Thank you for contributing!
