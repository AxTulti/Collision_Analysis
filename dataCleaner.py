import csv

# Prompt user for input and output filenames
input_filename = input("Enter the input filename: ")
output_filename = input("Enter the output filename: ")
aditional_configuration = input("Aditional configuration: ")

invert_cart_1 = "-invert_cart_1" in aditional_configuration
invert_cart_2 = "-invert_cart_2" in aditional_configuration

# Read the input file and process the data
with open(input_filename, 'r') as file:
    lines = file.readlines()

# Define MATLAB-compatible headers
headers = [
    "Tiempo", "Posicion_1", "Velocidad_1", "Aceleracion_1",
    "Posicion_2", "Velocidad_2", "Aceleracion_2"
]

# Add postfix to headers (Same as output filename without extention)
headers = [ header + f'_{output_filename[0:len(output_filename)-4]}' for header in headers]

data = []

# Parse data rows, skipping the non-relevant lines
for line in lines[6:]:  # Start reading from line 7
    if line.strip():  # Skip empty lines
        values = line.split()
        # Replace commas with dots for numerical compatibility
        values = [v.replace(',', '.') for v in values]
        if invert_cart_1:
            values[1] = str(float(values[1])*-1)
            values[2] = str(float(values[2])*-1)
            values[3] = str(float(values[3])*-1)
            
        if invert_cart_2:
            values[4] = str(float(values[4])*-1)
            values[5] = str(float(values[5])*-1)
            values[6] = str(float(values[6])*-1)
            
        data.append(values)

# Write the data into a .csv file
with open(output_filename, 'w', newline='') as csvfile:
    csv_writer = csv.writer(csvfile)
    csv_writer.writerow(headers)  # Write MATLAB-compatible headers
    csv_writer.writerows(data)  # Write data rows

print(f"Data successfully written to {output_filename}")

