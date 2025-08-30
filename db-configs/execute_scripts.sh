
# ---------------------------
# Configuration
# ---------------------------
DB_HOST="localhost"
DB_PORT="5432"
DB_NAME="university_db"
DB_USER="mallikarjunkamtam"
DB_PASSWORD="root"

SCRIPTS_DIR="./db-scripts"

# ---------------------------
# Execute Scripts
# ---------------------------
echo "Starting execution of SQL scripts in $SCRIPTS_DIR ..."

for file in $(ls "$SCRIPTS_DIR"/V*.sql | sort -V); do
    echo "----------------------------------------"
    echo "Running $file ..."
    
    if [ -z "$DB_PASSWORD" ]; then
        psql -h "$DB_HOST" -p "$DB_PORT" -U "$DB_USER" -d "$DB_NAME" -f "$file"
    else
        PGPASSWORD="$DB_PASSWORD" psql -h "$DB_HOST" -p "$DB_PORT" -U "$DB_USER" -d "$DB_NAME" -f "$file"
    fi

    if [ $? -ne 0 ]; then
        echo "Error executing $file. Exiting."
        exit 1
    fi
done

echo "All scripts executed successfully!"
