import pandas as pd

# ==========================
# Step 1: Load the Dataset
# ==========================
# df = pd.read_csv(r"C:\Users\Ayesha\Desktop\Sample-Superstore.csv")

print("Dataset Loaded Successfully!")
print(df.head())

# ==========================
# Step 2: Clean the Data
# ==========================
# Remove duplicate rows
df.drop_duplicates(inplace=True)

# Remove missing values
df.dropna(inplace=True)

print("\nData Cleaned Successfully!")

# ==========================
# Step 3: Calculate KPIs
# ==========================
total_sales = df["Sales"].sum()
total_orders = df["Order ID"].nunique()
total_customers = df["Customer ID"].nunique()
total_profit = df["Profit"].sum()

print("\n========== KEY PERFORMANCE INDICATORS ==========")
print(f"Total Sales      : {total_sales:.2f}")
print(f"Total Orders     : {total_orders}")
print(f"Total Customers  : {total_customers}")
print(f"Total Profit     : {total_profit:.2f}")

# ==========================
# Step 4: Save Cleaned Data
# ==========================
df.to_excel("processed_superstore.xlsx", index=False)

print("\nProcessed dataset saved as 'processed_superstore.xlsx'")

# ==========================
# Step 5: Automation Complete
# ==========================
print("\nAutomation Pipeline Executed Successfully!")
