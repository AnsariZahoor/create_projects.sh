# create_projects.sh

### Description

This Bash script automates the setup of a Python development environment within a specified folder. It creates a new folder, sets up a Python virtual environment using virtualenv, and installs user-specified Python packages. The script then opens the Visual Studio Code editor for further development.

## Usage

```
./create_projects.sh <folder_name> [base_path]
```

- `<folder_name>`: Name of the folder to be created.
- `[base_path]` (optional): Base path for the new folder. Defaults to "C:/YOUR_FOLDER_PATH" if not provided

```
./create_projects.sh my_project
```

### Prerequisites
- Bash
- Python
- Virtualenv
- pip
- Visual Studio Code (Optional)

### Instructions
- Clone this repository: git clone https://github.com/your-username/your-repo.git
- Navigate to the project folder: cd your-repo
- Run the script with the desired parameters.

### Note
Ensure that you have the necessary permissions to create folders and install packages.

Automated setup script for Python development environment using Bash.

