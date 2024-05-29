# Function to calculate factorial
factorial() {
    local num=$1
    local result=1

    while [ $num -gt 1 ]; do
        result=$((result * num))
        num=$((num - 1))
    done

    echo $result
}

# Read user input
read -p "Enter a number: " number

# Check if the input is a valid number
if [[ $number =~ ^[0-9]+$ ]]; then
    # Calculate the factorial
    fact=$(factorial $number)
    echo "The factorial of $number is: $fact"
else
    echo "Please enter a valid positive integer."
fi
