# README for Numbers Script

## Author Information
- **Name:** Lorenzo Cocchi
- **Course:** CPSC 298-01 Intro to *nix
- **Assignment:** Cars Script (Simple Database with menu options)  
- **Date:** November 3rd, 2025

## Program Description
This script prompts the user for a menu with three options, adding a car, listing the cars, and exiting. There is no option for removing cars. They are stored in a .txt file called "my_old_cars" which is the database containing all of the cars added.

## Example Output
If the user enters **1**, the program should display (in order of user input):
```
Enter the car year:
Enter the make:
Enter the model:
```

## Usage
To run the script interactively:
```bash
./cars.sh
```

To test with an input file (for example, `numbers-input`):
```bash
./cars.sh < cars-input
```

## How the Script Works
1. The script begins with a **shebang** (`#!/bin/bash`) and identifying comments.  
2. It **prompts** the user for one of three options using `read`.  
3. A **while loop** iterates until '3' is input which is the exit option.
4. The **case statement** has the 4 options based on the menu, add, list, and exit as the 4th '*'.

## Testing Results
When tested with the input file `cars-input` containing:
```
1
1984
Toyota
Supra
2
3
```
The script outputs:
```
Please select one of the following choices:
1) Add a car
2) List the cars
3) Quit
Enter your choice (1-3): 1
Enter the car year: 1984
Enter the car make: Toyota
Enter the car model: Supra
Car added.

Please select one of the following choices:
1) Add a car
2) List the cars
3) Quit
Enter your choice (1-3): 2
1984:Toyota:Supra

Please select one of the following choices:
1) Add a car
2) List the cars
3) Quit
Enter your choice (1-3): 3
Cya

```


## Challenges and Solutions


## Resources
Class slides, Google for syntax purposes

## License
This project is part of coursework for Chapman University and is intended for educational purposes.

