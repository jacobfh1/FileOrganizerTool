# FileOrganizerTool

A versatile script for searching, copying, and unzipping files based on specific patterns. This tool is ideal for organizing files in bulk, especially when dealing with a mix of directories and file types.

## Features

- Search for files based on a user-defined pattern.
- Copy matched files to a designated directory.
- Unzip specific files within the designated directory.

## Prerequisites

- Ensure you have `parallel` and `unzip` installed on your system.

## Configuration

Before running the script, you should configure it to match your needs:

1. **FILE_PATTERN**: Define the file search pattern. Adjust this to match your specific needs. By default, it's set to `"*Sample*"`, which will search for all files containing "Sample" in their names.

2. **OUTPUT_PARENT_DIR**: This is the parent directory where the copied files will be stored. By default, it's `"OutputDirectory"`. Change this name if needed.

3. **DEST_SUB_DIR**: This is the directory inside the `OUTPUT_PARENT_DIR` where the files will be copied to. By default, it's set to a subdirectory named `SubDir`. Adjust this if you have a different naming preference.

## Usage

1. Adjust the configuration parameters in the script as needed.
2. Run the script:

<pre>
```bash
./process_files.sh
```
</pre>

3. Monitor the progress as the script identifies, copies, and unzips files.

## Contributions

Contributions, issues, and feature requests are welcome! Feel free to check the [issues page](/issues).

## License

Distributed under the MIT License. See `LICENSE` for more information.
