#!/bin/bash

# Variables
DB_INSTANCE_IDENTIFIER="my-rds-db"
DB_NAME="appdatabase"
DB_USERNAME="admin"
DB_PASSWORD="yourpassword"   # Use a strong password
DB_INSTANCE_CLASS="db.t3.micro"    # Updated to db.t3.micro
ENGINE="mysql"
ENGINE_VERSION="5.7"    # Specify the major version to allow AWS to select the latest compatible minor version
ALLOCATED_STORAGE=20

# Create the RDS instance
aws rds create-db-instance \
    --db-instance-identifier "$DB_INSTANCE_IDENTIFIER" \
    --db-name "$DB_NAME" \
    --master-username "$DB_USERNAME" \
    --master-user-password "$DB_PASSWORD" \
    --db-instance-class "$DB_INSTANCE_CLASS" \
    --engine "$ENGINE" \
    --engine-version "$ENGINE_VERSION" \
    --allocated-storage "$ALLOCATED_STORAGE"

echo "RDS instance creation initiated."
