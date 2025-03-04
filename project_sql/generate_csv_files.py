import pandas as pd
import random
from datetime import datetime, timedelta

# Helper function to generate random dates
def random_date(start, end):
    return start + timedelta(seconds=random.randint(0, int((end - start).total_seconds())))

# Seed for reproducibility
random.seed(42)

# 1. Customers Data
customers_data = [
    {'cust_id': 1, 'cust_firstname': 'Ivan', 'cust_lastname': 'Petrov'},
    {'cust_id': 2, 'cust_firstname': 'Olga', 'cust_lastname': 'Melnyk'},
    {'cust_id': 3, 'cust_firstname': 'Andriy', 'cust_lastname': 'Kovalenko'},
    {'cust_id': 4, 'cust_firstname': 'Nina', 'cust_lastname': 'Ivanova'},
    {'cust_id': 5, 'cust_firstname': 'Yulia', 'cust_lastname': 'Petrova'}
]
customers_df = pd.DataFrame(customers_data)

# 2. Orders Data
orders_data = []
order_ids = ['ORD-1001', 'ORD-1002', 'ORD-1003', 'ORD-1004', 'ORD-1005']
item_ids = ['BORS-001', 'VARE-001', 'PAMP-001']
for i in range(1, 21):  # Create 20 orders as example
    order = {
        'row_id': i,
        'order_id': random.choice(order_ids),
        'created_at': random_date(datetime(2023, 1, 1), datetime(2024, 12, 31)),
        'item_id': random.choice(item_ids),
        'quantity': random.randint(1, 5),
        'cust_id': random.randint(1, 5),
        'delivery': random.choice([True, False]),
        'add_id': random.randint(1, 5)
    }
    orders_data.append(order)
orders_df = pd.DataFrame(orders_data)

# 3. Address Data
address_data = [
    {'add_id': 1, 'delivery_address1': 'ul. Kwiatowa 10', 'delivery_address2': '', 'delivery_city': 'Warszawa', 'delivery_zipcode': '00-001'},
    {'add_id': 2, 'delivery_address1': 'ul. Wiosny Ludów 25', 'delivery_address2': '', 'delivery_city': 'Kraków', 'delivery_zipcode': '30-500'},
    {'add_id': 3, 'delivery_address1': 'ul. Mickiewicza 17', 'delivery_address2': '', 'delivery_city': 'Lublin', 'delivery_zipcode': '20-400'},
    {'add_id': 4, 'delivery_address1': 'ul. Pięciomorgowa 6', 'delivery_address2': '', 'delivery_city': 'Poznań', 'delivery_zipcode': '60-100'},
    {'add_id': 5, 'delivery_address1': 'ul. Lechitów 9', 'delivery_address2': '', 'delivery_city': 'Gdańsk', 'delivery_zipcode': '80-001'}
]
address_df = pd.DataFrame(address_data)

# 4. Item Data
item_data = [
    {'item_id': 'BORS-001', 'sku': 'BORS-001', 'item_name': 'Borscht', 'item_cat': 'Soup', 'item_size': '500g', 'item_price': 120.00},
    {'item_id': 'VARE-001', 'sku': 'VARE-001', 'item_name': 'Vareniky', 'item_cat': 'Main Course', 'item_size': '10pcs', 'item_price': 150.00},
    {'item_id': 'PAMP-001', 'sku': 'PAMP-001', 'item_name': 'Pampushki', 'item_cat': 'Bread', 'item_size': '5pcs', 'item_price': 45.00}
]
item_df = pd.DataFrame(item_data)

# 5. Ingredient Data
ingredient_data = [
    {'ing_id': 'ING-001', 'ing_name': 'Beetroot', 'ing_weight': 200, 'ing_meas': 'grams', 'ing_price': 5.00},
    {'ing_id': 'ING-002', 'ing_name': 'Cabbage', 'ing_weight': 150, 'ing_meas': 'grams', 'ing_price': 3.00},
    {'ing_id': 'ING-003', 'ing_name': 'Flour', 'ing_weight': 1000, 'ing_meas': 'grams', 'ing_price': 2.50},
    {'ing_id': 'ING-004', 'ing_name': 'Potatoes', 'ing_weight': 300, 'ing_meas': 'grams', 'ing_price': 4.00},
    {'ing_id': 'ING-005', 'ing_name': 'Onion', 'ing_weight': 100, 'ing_meas': 'grams', 'ing_price': 2.00},
    {'ing_id': 'ING-006', 'ing_name': 'Garlic', 'ing_weight': 50, 'ing_meas': 'grams', 'ing_price': 1.50}
]
ingredient_df = pd.DataFrame(ingredient_data)

# 6. Recipe Data
recipe_data = [
    {'row_id': 1, 'recipe_id': 'BORS-001', 'ing_id': 'ING-001', 'quantity': 200},
    {'row_id': 2, 'recipe_id': 'BORS-001', 'ing_id': 'ING-002', 'quantity': 150},
    {'row_id': 3, 'recipe_id': 'VARE-001', 'ing_id': 'ING-003', 'quantity': 300},
    {'row_id': 4, 'recipe_id': 'VARE-001', 'ing_id': 'ING-004', 'quantity': 200},
    {'row_id': 5, 'recipe_id': 'PAMP-001', 'ing_id': 'ING-005', 'quantity': 100},
    {'row_id': 6, 'recipe_id': 'PAMP-001', 'ing_id': 'ING-006', 'quantity': 50}
]
recipe_df = pd.DataFrame(recipe_data)

# 7. Inventory Data
inventory_data = [
    {'inv_id': 1, 'ing_id': 'ING-001', 'quantity': 5000},
    {'inv_id': 2, 'ing_id': 'ING-002', 'quantity': 4000},
    {'inv_id': 3, 'ing_id': 'ING-003', 'quantity': 3000},
    {'inv_id': 4, 'ing_id': 'ING-004', 'quantity': 2500},
    {'inv_id': 5, 'ing_id': 'ING-005', 'quantity': 1500},
    {'inv_id': 6, 'ing_id': 'ING-006', 'quantity': 1000}
]
inventory_df = pd.DataFrame(inventory_data)

# 8. Staff Data
staff_data = [
    {'staff_id': 'STAFF-001', 'first_name': 'Oleh', 'last_name': 'Petrenko', 'position': 'Chef', 'hourly_rate': 15.00},
    {'staff_id': 'STAFF-002', 'first_name': 'Anna', 'last_name': 'Melnyk', 'position': 'Waiter', 'hourly_rate': 10.00},
    {'staff_id': 'STAFF-003', 'first_name': 'Igor', 'last_name': 'Shulha', 'position': 'Cashier', 'hourly_rate': 12.00},
    {'staff_id': 'STAFF-004', 'first_name': 'Olga', 'last_name': 'Ivanova', 'position': 'Manager', 'hourly_rate': 20.00}
]
staff_df = pd.DataFrame(staff_data)

# 9. Shift Data
shift_data = [
    {'shift_id': 'SHIFT-001', 'day_of_week': 'Monday', 'start_time': '08:00', 'end_time': '16:00'},
    {'shift_id': 'SHIFT-002', 'day_of_week': 'Monday', 'start_time': '16:00', 'end_time': '00:00'},
    {'shift_id': 'SHIFT-003', 'day_of_week': 'Tuesday', 'start_time': '08:00', 'end_time': '16:00'},
    {'shift_id': 'SHIFT-004', 'day_of_week': 'Tuesday', 'start_time': '16:00', 'end_time': '00:00'}
]
shift_df = pd.DataFrame(shift_data)

# 10. Rota Data
rota_data = [
    {'row_id': 1, 'rota_id': 'ROTA-001', 'date': '2023-01-01 12:30:00', 'shift_id': 'SHIFT-001', 'staff_id': 'STAFF-001'},
    {'row_id': 2, 'rota_id': 'ROTA-002', 'date': '2023-01-02 14:00:00', 'shift_id': 'SHIFT-002', 'staff_id': 'STAFF-002'},
    {'row_id': 3, 'rota_id': 'ROTA-003', 'date': '2023-01-05 18:15:00', 'shift_id': 'SHIFT-001', 'staff_id': 'STAFF-003'},
    {'row_id': 4, 'rota_id': 'ROTA-004', 'date': '2023-01-08 19:00:00', 'shift_id': 'SHIFT-003', 'staff_id': 'STAFF-004'}
]
rota_df = pd.DataFrame(rota_data)

# Saving all the DataFrames to CSV files
file_paths = {
    "customers.csv": customers_df,
    "orders.csv": orders_df,
    "address.csv": address_df,
    "item.csv": item_df,
    "ingredient.csv": ingredient_df,
    "recipe.csv": recipe_df,
    "inventory.csv": inventory_df,
    "staff.csv": staff_df,
    "shift.csv": shift_df,
    "rota.csv": rota_df
}

# Saving to CSV
for file_name, df in file_paths.items():
    df.to_csv(f'{file_name}', index=False)
    print(f'{file_name} saved.')
