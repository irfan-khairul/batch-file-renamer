
## Batch Script for Renaming Files

This batch script allows you to rename multiple files in a folder based on new names specified in a text file. The script prompts the user for the location of the new names file and the folder containing the files to rename.

## Prerequisites

-   Windows operating system
-   A text file containing the new names for the files, with each name on a new line
-   For safety, move the files to be named in a different folder.

## Instructions

1.  **Save the batch file** (e.g., `rename_files.bat`) in a convenient location on your computer.
2.  **Create a text file** (e.g., `newnames.txt`) containing the new names for the files, with each name on a new line.
3.  **Double-click the  `rename_files.bat`  file** to execute the script.
4.  **When prompted, enter the full path to the new names file** (e.g., `C:\path\to\your\newnames.txt`). Press Enter.
    
    -   If the specified file does not exist, an error message will be displayed, and the script will exit.
    
5.  **Next, enter the full path to the folder containing the files you want to rename**. Press Enter.
    
    -   If the specified folder does not exist, an error message will be displayed, and the script will exit.
    
6.  **The script will display the selected folder path**. Press any key to continue.
7.  **Next, enter the desired file extension for the new names** (e.g., `.txt`, `.pdf`, `.docx`). Press Enter.
8. **Finally, enter the pattern of the old file names** (e.g., if the file names are `report1`, `report2` and so on, type `report`). Press Enter.
9.  **The script will start renaming the files** based on the new names specified in the text file, appending the chosen file extension.
    
    -   If a file matching the old name pattern does not exist, a message will be displayed indicating that the file does not exist.
    
10.  **Once the renaming process is complete**, the script will pause, allowing you to review the results. Press any key to exit.

## Notes

-   **Always create a backup of your files** before running the script to prevent data loss.
-   **Test the script with a small set of sample data** before applying it to your entire dataset to ensure it behaves as expected.
-   **If you encounter any issues**, double-check the file paths and ensure that the new names file is formatted correctly (one name per line).

If you have any further questions or need additional modifications, feel free to ask!
