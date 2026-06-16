#!/bin/bash

# Build script for Kotlin Hello World Spring Boot project
# This script compiles the project and creates an executable JAR file

set -e  # Exit on error

echo "================================"
echo "Building Kotlin Hello World App"
echo "================================"
echo ""

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}[1/3]${NC} Cleaning previous builds..."
mvn clean

echo -e "${BLUE}[2/3]${NC} Building project..."
export MAVEN_OPTS="--add-opens java.base/java.lang=ALL-UNNAMED --add-opens java.base/java.util=ALL-UNNAMED"
mvn package -DskipTests

echo -e "${BLUE}[3/3]${NC} Build completed successfully!"
echo ""
echo -e "${GREEN}✓ Build successful!${NC}"
echo -e "${GREEN}✓ JAR file location: target/kotlin-hello-world-1.0.0.jar${NC}"
echo ""
echo "Next steps:"
echo "  - Run with: ./run.sh"
echo "  - Or manually: java -jar target/kotlin-hello-world-1.0.0.jar"
