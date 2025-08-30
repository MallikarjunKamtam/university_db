
# ---------------------------
# Configuration
# ---------------------------
SCRIPTS_DIR="./db-scripts"
OUTPUT_FILE="./all_sql_contents.txt"

# Clear output file if it exists
> "$OUTPUT_FILE"

echo "Concatenating all SQL files from $SCRIPTS_DIR into $OUTPUT_FILE ..."

# Loop through all V*.sql files in order
for file in $(ls "$SCRIPTS_DIR"/V*.sql | sort -V); do
    echo "----------------------------------------" >> "$OUTPUT_FILE"
    echo "-- File: $file" >> "$OUTPUT_FILE"
    echo "----------------------------------------" >> "$OUTPUT_FILE"
    
    cat "$file" >> "$OUTPUT_FILE"
    echo -e "\n" >> "$OUTPUT_FILE"
done

echo "All files concatenated successfully into $OUTPUT_FILE"
