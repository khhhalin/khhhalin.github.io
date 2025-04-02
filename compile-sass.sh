#!/bin/bash

# Check if sass is installed
if ! command -v sass &> /dev/null; then
    echo "Sass is not installed. Please install it first:"
    echo "npm install -g sass"
    exit 1
fi

# Compile Sass to CSS
echo "Compiling Sass files..."
sass css/styles.scss css/styles.css --style expanded
sass css/styles.scss css/styles.min.css --style compressed

echo "Compilation complete!"
echo "Development version: css/styles.css"
echo "Production version: css/styles.min.css"
