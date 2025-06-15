# Clarify Capital Take Home 

Thank you for your interest in joining Clarify Capital! This assessment is designed to evaluate your technical skills, code quality, and problem-solving approach. Please read the instructions carefully and reach out if you have any questions.

## Overview

Build a simple web application that manages Clients, Lenders and Loans. The goal is to demonstrate your ability to design, implement, and test a small but complete feature set.

## Features

Add 3 models
1. Clients: 
    - Has a name
    - Has a credit score
    - Any other attributes you see fit
2. Lenders:
    - Has a name
    - Has a minimum loan amount
    - Has an intrest rate
    - Any other attributes you see fit
3. Loan:
    - belongs to a Client
    - belongs to A Lender
    - Any other attributes you see fit

## Getting Started

### Prerequisites

- Ruby (version 2.7 or higher)
- Rails (version 6.0 or higher)
- SQLite3 (or any other database of your choice)

### Installation

1. Clone the repository:

   ```
   git clone <repository-url>
   cd clarify-capital
   ```

2. Install the required gems:

   ```
   bundle install
   ```

3. Set up the database:

   ```
   rails db:create
   rails db:migrate
   ```

4. Start the Rails server:

   ```
   rails server
   ```

5. Open your browser and navigate to `http://localhost:3000`.

## TO DO Challenges

1. Add migrations to create a schema for the given models
2. Create appropriate connections between Models
3. Add models, controllers and views for the following
    - CRUD for Clients
    - Create new Lendor
    - View all Lendors
    - Create a Loan 
4. Create some validation for Clients and Lendors, ie: appropriate credit scores
5. Create a function `create_best_loan` for a Client to get matched with THE BEST Lender for a Loan. 
    - This should be a function which finds a loan for a Client using the Clients credit score, Lendor's minimum credit score, Loan amount, Lendors minimum Loan amount and interest rate. 
6. Create a test for `create_best_loan` using any testing framework. 

### Bonus (Optional)

- Add filtering/searching capabilities.

## Expectations

- **Code Quality:** Write clean, maintainable, and well-documented code.
- **Testing:** Include tests for critical logic.
- **Documentation:** Provide clear setup instructions and a brief explanation of your approach.
- **Git Usage:** Commit your work incrementally with meaningful messages.

---

## Submission

1. Fork this repository or create a private repo and share access with us.
2. Include a `README.md` with setup instructions and any notes.
3. Submit your solution within 2 days.

---

## Evaluation Criteria

- Correctness and completeness
- Code structure and readability
- Problem-solving and design decisions
- Testing and documentation
- Bonus: Use of advanced features or best practices

---

We look forward to reviewing your submission!

## License

This project is open source and available under the MIT License.