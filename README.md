# SmartTrack Inventory Management
## Ryan Leach
## Andrew Still

Due to complexities in the computational requirements of the mobile development emulator the project was converted from a mobile application to a web application.

Additional complexities were met in the initial development of the site using the Node.js package with Express frameworks and EJS views. It was found that JavaScript lacked the functionality to efficiently handle the operations required by the site in communication with elements of the database through complex query designation.
	
	As such, the project was redesigned using a Laravel framework to communicate to the Blade views 	and Laragon Database.

Download Instruction:
1. Ensure you have the Laragon application downloaded with the laravel suit. This should be saved in your C drive or relavent alternatives.

2. Download the SmartTrack zip package and extract in the Laragon directory within the subdirectory 'www'.

3. Extract the app.zip and vendor.zip files.

4. Open the Laragon application and select start all.

5. Import the Database SQL file to instantiate the database on your system.

6. Open the Laragon terminal command line designated 'Terminal'

7. cd into the innermost project file titled 'Smarttrack-repository'

8. use the command 'php artisan serve' to run the localhost on url http://127.0.0.1:8000

9. Open the aforementioned URL in browser.
