
#!/bin/bash
# Copy files with specific extention from one directory to another 

# Request the source and target directories from the user
# Naming: "source_directory" and "target_directory"

# Request the source directory from the user
echo "Enter the path to the SOURCE directory:"
read source_directory

# Request the target directory from the user
echo "Enter the path to the TARGET directory:"
read target_directory

# Output the entered paths for verification
echo "SOURCE directory: $source_directory"
echo "TARGET directory: $target_directory"

# 2.Prompt file extension for copying
# Description: Prompt the user to specify the extension of the files to be copied.
# Action: Prompt the user to enter the file extension.
# Use the variable - file_extension for saving

# file extension request
read -p "input the file extension: " file_extension

# 3.Check existence and accessibility of source and target directories
# Description: Check whether source and target directories exist and are accessible.
# Action: Check existence and accessibility of directories. If they do not exist or are inaccessible, print an error message.
# Terminate script with code 1

if [ ! -d "$source_directory" ]; then
    echo "Error: The source directory '$source_directory' doesn't exist ot this is not directory."
    exit 1
fi

if [ ! -r "$source_directory" ]; then
    echo "Error: There is no 'read' permissions for the '$source_directory'."
    exit 1
fi

if [ ! -d "$target_directory" ]; then
    echo "Error: The target directory '$target_directory' doesn't exist ot this is not directory."
    exit 1
fi

if [ ! -w "$target_directory" ]; then
    echo "Error: There is no 'write' permissions for '$target_directory'."
    exit 1
fi

if [ ! -d "$source_directory" ]; then
    echo "Error: The source directory '$source_directory' doesn't exist ot this is not directory."
    exit 1
fi

if [ ! -r "$source_directory" ]; then
    echo "Error: There is no 'read' permissions for the '$source_directory'."
    exit 1
fi

if [ ! -d "$target_directory" ]; then
    echo "Error: The target directory '$target_directory' doesn't exist ot this is not directory."
    exit 1
fi

if [ ! -w "$target_directory" ]; then
    echo "Error: There is no 'write' permissions for '$target_directory'."
    exit 1
fi

# 4.Check for files with the specified extension in the source directory
# Description: Check for files with the specified extension in the source directory.
# Action: Search for files with the specified extension in the source directory. If no files are found, display an error message.
# Terminate the script with code 1

if ls "$source_directory"/*."$file_extension" 1> /dev/null 2>&1; then
	echo "Files with extention .$file_extension found in $source_directory"
else
	echo "Error: No files with extention .$file_extension were found in $source_directory."
	exit 1
fi

# 5.Copy files with the specified extension to the target directory
# Description: Copy all files with the specified extension from the source directory to the target directory.
# Action: Copy each file with the specified extension from the source directory to the target directory. Print a message about copying each file.

echo 'Copying all files with' $file_extension 'type from' $source_directory 'to' $target_directory

for file in $source_directory/*$file_extension; do
	if [ -f $file ]; then
		cp $file $target_directory
		echo 'File' $file 'copied to' $target_directory
	fi
done

echo 'All files with type' $file_extension 'was copied from' $source_directory 'to' $target_directory
