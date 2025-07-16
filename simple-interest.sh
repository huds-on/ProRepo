echo "=== Simple Interest Calculator ==="
read -p "Enter Principal amount (P): " principal
read -p "Enter Rate of Interest (R): " rate
read -p "Enter Time in years (T): " time

if ! [[ "$principal" =~ ^[0-9]+(\.[0-9]+)?$ ]] || \
   ! [[ "$rate" =~ ^[0-9]+(\.[0-9]+)?$ ]] || \
   ! [[ "$time" =~ ^[0-9]+(\.[0-9]+)?$ ]]; then
    echo "Error: Please enter valid numeric values."
    exit 1
fi

simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

echo "----------------------------------"
echo "Simple Interest = ₹$simple_interest"
echo "----------------------------------"

