#! /bin/bash
# cars.sh
# Lorenzo Cocchi

inv_file="my_old_cars"

# Ensure inventory file exists
: > "$inv_file"

while true; do
  echo "Please select one of the following choices:"
  echo "1) Add a car"
  echo "2) List the cars"
  echo "3) Quit"
  printf "Enter your choice (1-3): "
  read choice

  case "$choice" in
    1)
      echo "Enter the car year: "
      read -r year
      echo "Enter the car make: "
      read make
      echo "Enter the car model: "
      read -r model

      # Build record Year:Make:Model and append
      printf "%s:%s:%s\n" "$year" "$make" "$model" >> "$inv_file"
      echo "Car added."
      ;;
    2)
      # List cars sorted numerically by first colon-separated field (Year)
      # -t: sets delimiter to colon, -k1,1 picks first field only, -n numeric sort
      sort -t: -k1,1 -n "$inv_file"
      ;;
    3)
      echo "Cya"
      break
      ;;
    *)
      echo "Invalid choice. Please enter 1, 2, or 3."
      ;;
  esac

  echo
done

