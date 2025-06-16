# 🚀 Clarify Capital Take-Home Assessment

Welcome! We're excited to see your skills in action. This assessment is designed to evaluate your technical expertise, code quality, and problem-solving approach. Please read the instructions carefully, and don’t hesitate to reach out with any questions.

---

## 📝 Overview

Build a simple web application to manage **Clients**, **Lenders**, and **Loans**. The goal is to demonstrate your ability to design, implement, and test a small but complete feature set.

---

## 🎯 Features

You’ll be working with three core models:

1. **Clients**
    - Name
    - Credit score
    - (Add any other attributes you find useful)
2. **Lenders**
    - Name
    - Minimum loan amount
    - Interest rate
    - (Add any other attributes you find useful)
3. **Loans**
    - Belongs to a Client
    - Belongs to a Lender
    - (Add any other attributes you find useful)

---

## 🚦 Getting Started

### Prerequisites

- **Ruby** (2.7+)
- **Rails** (6.0+)
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

4. **Start the server**
    ```sh
    rails server
    ```

5. **Visit** [http://localhost:3000](http://localhost:3000) in your browser.

---

## 🏗️ TO DO Challenges

1. **Migrations:** Create the schema for the models above.
2. **Associations:** Set up the correct relationships between models.
3. **CRUD:** Implement models, controllers, and views for:
    - Full CRUD for Clients
    - Create new Lender
    - View all Lenders
    - Create a Loan
4. **Validations:** Add sensible validations (e.g., credit score ranges, minimum loan amounts).
5. **Business Logic:** Implement a `create_best_loan` function to match a Client with the *best* Lender for a Loan.
    - Consider: Client’s credit score, Lender’s minimum credit score, loan amount, Lender’s minimum loan amount, and interest rate.
6. **Testing:** Write a test for `create_best_loan` using any testing framework.

### 🌟 Bonus (Optional)

- Add filtering/searching capabilities for Clients, Lenders, or Loans.

---

## 💡 Expectations

- **Code Quality:** Clean, maintainable, and well-documented code.
- **Testing:** Tests for critical logic.
- **Documentation:** Clear setup instructions and a brief explanation of your approach.
- **Git Usage:** Commit your work incrementally with meaningful messages.

---

## 📬 Submission

1. Fork this repository or create a private repo and share access with us.
2. Include a `README.md` with setup instructions and any notes.
3. Submit your solution within **2 days**.

---

## 🧐 Evaluation Criteria

- Correctness and completeness
- Code structure and readability
- Problem-solving and design decisions
- Testing and documentation
- **Bonus:** Use of advanced features or best practices

---

We look forward to seeing what you build. Good luck!

---

## 📝 License

This project is open source and available under the MIT License.