# 🚀 Clarify Capital Take-Home Assessment

---
![Screenshot_20250625-133117_Chrome](https://github.com/user-attachments/assets/ff412392-eaa2-48c6-a832-a23544842c24)


## 📝 Overview

A simple web application to manage **Clients**, **Lenders**, and **Loans**.

---

## 🎯 Features

1. **Clients**
    - First Name
    - Last Name
    - Credit Score
    - Phone Number
    - Email Address
2. **Lenders**
    - Name
    - Minimum loan amount
    - Maximum Loan Amount _(Based on the existing $5,000,000 from Clarify Capital site)_
    - Minimum Credit
    - Interest rate _( in 0.000 decimal format for conversion i.e. `10.5%`)
3. **Loans**
    - Belongs to a Client
    - Belongs to a Lender
    - Amount
    - Start Date
    - Due Date
    - Status

---

## 🚦 Getting Started

### Prerequisites

- **Ruby** (3.4+)
- **Rails** (7.2+)
- **SQLite3** (or your preferred database)

### Installation

1. **Clone the repository**
    ```sh
    git clone <repository-url>
    cd clarify-capital
    ```

2. **Install dependencies**
    ```sh
    bundle install
    ```

3. **Set up the database**
    ```sh
    rails db:create
    rails db:migrate
    ```
4. **Run `CreateBestLoan` test**
    ```sh
    rails test test/create_best_loan_test.rb
    ```

5. **Run All Tests**
    ```sh
    rails test
    ```
6. **Start the server**
    ```sh
    rails server
    ```

7. **Visit** [http://localhost:3000](http://localhost:3000) in your browser.

---

## 🏗️ TO DO Challenges

1. [x] **Migrations:** Create the schema for the models above.
2. [x] **Associations:** Set up the correct relationships between models.
3. [x] **CRUD:** Implement models, controllers, and views for:
    - [x] Full CRUD for Clients
    - [x] Create new Lender
    - [x] View all Lenders
    - [x] Create a Loan
4. [x] **Validations:** Add sensible validations (e.g., credit score ranges, minimum loan amounts).
5. [x] **Business Logic:** Implement a `create_best_loan` function to match a Client with the *best* Lender for a Loan.
    - [x] Consider: Client’s credit score, Lender’s minimum credit score, loan amount, Lender’s minimum loan amount, and interest rate.
6. [x] **Testing:** Write a test for `create_best_loan` using any testing framework.

### 🌟 Bonus (Optional)

- [x] filtering/searching capabilities for Clients, Lenders, or Loans is native to New Loan Creation.

---

## 💡 Summary
  - The intention is to create a seamless user experience that has slight intelligence based on user actions.
  - For instance, the _"Ready to grow your business?"_ section will filter `Lender`s based on the `amount` being greater than the `minimum_loan_amount`.
  - By default all `Lender`s are sorted for best `interest` rate & `amount` by default.
  - About 5 steps were removed by taking this approach to where the goal is to get the loan application completed in the simplest steps possible.

# THANK YOU FOR THE OPPORTUNITY! :smile:

---

## 📝 License

This project is open source and available under the MIT License.
