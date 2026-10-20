#!/bin/bash
echo "=================================================="
echo " Starting MediCare Pharmacy Management System"
echo "=================================================="

# Export Homebrew PATH for Java 17 & Maven
export PATH="/opt/homebrew/opt/openjdk@17/bin:/opt/homebrew/bin:$PATH"

# Navigate to project directory
cd "$(dirname "$0")"

# Build if JAR does not exist
if [ ! -f "target/MedicalShopManagementSystem-1.0.0.jar" ]; then
    echo "[1/2] Building project with Maven... (Please wait)"
    mvn clean package -DskipTests
fi

echo "[2/2] Launching MediCare Application..."
java -jar target/MedicalShopManagementSystem-1.0.0.jar
