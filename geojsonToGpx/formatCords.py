import json
from collections import defaultdict
import string

def process_file(input_filename, output_filename):
    # Initialize counters and storage for name management
    success_count = 0
    fail_count = 0
    no_name_count = 0  # Counter for unnamed slopes
    name_count = defaultdict(int)  # Tracks occurrences of each name

    try:
        # Open the output file to write the formatted strings
        with open(output_filename, 'w') as outfile:
            # Open the input file and read line by line
            with open(input_filename, 'r') as infile:
                for line in infile:
                    try:
                        # Attempt to parse the JSON object from the line
                        feature = json.loads(line.strip())
                        
                        # Extract the name; if null or missing, assign a default using no_name_count
                        name = feature['properties'].get('name')
                        if not name:
                            no_name_count += 1
                            name = f"NoName{no_name_count}"  # Assigning unique name to unnamed slopes
                        else:
                            # Only use the part of the name before the first space
                            original_name = name.split()[0]
                            # Handle duplicate names by appending letters
                            if name_count[original_name] > 0:
                                suffix = string.ascii_lowercase[name_count[original_name] - 1]  # Get suffix 'a', 'b', etc.
                                name = f"{original_name}{suffix}"
                            name_count[original_name] += 1

                        # Extract coordinates; assuming the first geometry listed
                        coordinates = feature['geometry']['coordinates']

                        # Write the formatted string to the output file
                        # formatted_string = f"static var slope{name} as Array = {coordinates};\n"
                        formatted_string = f"static var lift{name} as Array = {coordinates};\n"
                        outfile.write(formatted_string)
                        success_count += 1
                    except json.JSONDecodeError:
                        print(f"Failed to decode JSON in line")
                        fail_count += 1
                    except KeyError as e:
                        print(f"Missing expected key {e} in line")
                        fail_count += 1

        print(f"Data extraction and formatting complete. Successfully processed: {success_count}, Failed: {fail_count}")
        print("Output saved to:", output_filename)

    except Exception as e:
        print("An error occurred:", e)

# Example usage
input_file = 'temp2.txt'  # Ensure this points to your actual file
output_file = 'formatted_lifts.txt'
process_file(input_file, output_file)

