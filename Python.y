try:
    filename = input("Enter the name of the file to read: ")
    with open(filename, 'r') as file:
        content = file.read()
        modified_content = content.upper()

    new_filename = "modified_" + filename
    with open(new_filename, 'w') as new_file:
        new_file.write(modified_content)

    print(f"Modified content written to '{new_filename}'.")

except FileNotFoundError:
    print("Error: The file does not exist.")
except IOError:
    print("Error: Could not read or write the file.")
