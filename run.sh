#!/bin/bash

# Run script for Kotlin Hello World Spring Boot project
# This script starts the application

set -e  # Exit on error

echo "================================"
echo "Running Kotlin Hello World App"
echo "================================"
echo ""

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Check if JAR file exists
if [ ! -f "target/kotlin-hello-world-1.0.0.jar" ]; then
    echo -e "${YELLOW}⚠ JAR file not found!${NC}"
    echo "Building project first..."
    echo ""
    ./build.sh
    echo ""
fi

echo -e "${BLUE}[*]${NC} Starting application..."
echo -e "${GREEN}✓ Application is starting${NC}"
echo ""
echo "Access the application at:"
echo -e "  ${GREEN}http://localhost:8080${NC}"
echo ""
echo "API Endpoints:"
echo -e "  ${GREEN}GET /${NC}         - Hello World"
echo -e "  ${GREEN}GET /hello${NC}     - Greet with name parameter"
echo ""
echo "Press Ctrl+C to stop the application"
echo ""

export MAVEN_OPTS="--add-opens java.base/java.lang=ALL-UNNAMED --add-opens java.base/java.util=ALL-UNNAMED"
java -jar target/kotlin-hello-world-1.0.0.jar
