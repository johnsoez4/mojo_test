# Project Structure

This document describes the folder structure of the mojo_test project.

## Directory Tree

```
mojo_test/
├── PROJECT_STRUCTURE.md                   # This documentation file
├── main.mojo                              # Main entry point
├── mojo_test.code-workspace               # VS Code workspace configuration
├── pixi.toml                              # Pixi package manager configuration
├── pixi.lock                              # Pixi lock file
├── update.sh                              # Update script
├── kgen.trace.json.time-events.txt        # Trace events file
├── kgen.trace.json.time-trace             # Trace file
│
├── src/                                   # Source code directory
│   ├── __init__.mojo                      # Package initialization
│   ├── funcs.mojo                         # Function definitions
│   └── other/                             # Other source files directory
│       └── crash_mojo_test.mojo           # Crash test file
│
└── tests/                                 # Test directory
    ├── test_hello1.mojo                   # Test file 1
    ├── test_hello2.mojo                   # Test file 2
    └── src/                               # <-- Symbolic link to source code directory
        ├── __init__.mojo                  # Test package initialization
        └── funcs.mojo                     # Test function definitions
```

## Directory Descriptions

### Root Directory
- **PROJECT_STRUCTURE.md**: This documentation file describing the project structure
- **main.mojo**: The main entry point of the application
- **mojo_test.code-workspace**: VS Code workspace configuration file
- **pixi.toml**: Configuration file for the Pixi package manager
- **pixi.lock**: Lock file for Pixi dependencies
- **update.sh**: Shell script for updating the project
- **kgen.trace.json.time-events.txt**: Trace events output file
- **kgen.trace.json.time-trace**: Trace output file

### `/src`
Contains the main source code for the project.
- **__init__.mojo**: Package initialization file
- **funcs.mojo**: Core function implementations
- **other/**: Subdirectory containing miscellaneous source files
  - **crash_mojo_test.mojo**: File for testing crash scenarios or edge cases

### `/tests`
Contains test files and test-related source code.
- **test_hello1.mojo**: Test suite 1
- **test_hello2.mojo**: Test suite 2
- **src/**: Subdirectory containing test-specific source files (symbolic link to main src)
  - **__init__.mojo**: Test package initialization
  - **funcs.mojo**: Test function implementations

