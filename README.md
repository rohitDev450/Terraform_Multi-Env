# 🚀 Multi-Environment AWS Infrastructure using Terraform

This project demonstrates how to design and deploy a **multi-environment infrastructure (Dev, Staging, Production)** on AWS using **Terraform (Infrastructure as Code)**.

The goal is to automate infrastructure provisioning, ensure consistency across environments, and follow real-world DevOps best practices.

---

## 📌 Project Overview

In real-world applications, managing multiple environments manually leads to inconsistency and errors.
This project solves that problem by using **modular Terraform code** to provision identical infrastructure across environments with environment-specific configurations.

---

## 🏗️ Architecture

* Three isolated environments:

  * **Development (dev)**
  * **Staging (stg)**
  * **Production (prod)**

* Each environment includes:

  * EC2 instances (different sizes per environment)
  * S3 buckets (for storage & remote state)
  * DynamoDB tables (for state locking)

---

## 🔧 Tech Stack

* **Cloud:** AWS
* **IaC Tool:** Terraform
* **Services Used:**

  * EC2
  * S3
  * DynamoDB
  * IAM

---

## ⚙️ Features

* ✅ Modular Terraform architecture
* ✅ Environment-based configuration (dev, staging, prod)
* ✅ Remote backend setup using S3
* ✅ State locking using DynamoDB
* ✅ Reusable infrastructure modules
* ✅ Secure IAM-based access

---

## 📂 Project Structure

```
Terraform_Multi-Env/
│
├── Terra-Infra/              # Reusable Terraform modules
│   ├── ec2.tf
│   ├── s3.tf
│   ├── dynamodb.tf
│   └── variables.tf
│
├── main.tf                   # Environment configuration
├── variables.tf
├── terraform.tf
├── README.md
```

---

## 🚀 How It Works

* Terraform modules are created for reusable components (EC2, S3, DynamoDB)
* Each environment (dev, staging, prod) calls the same module with different variables
* Resources are provisioned automatically based on environment inputs

---

## ▶️ Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/rohitDev450/Terraform_Multi-Env.git
cd Terraform_Multi-Env
```

### 2. Initialize Terraform

```bash
terraform init
```

### 3. Plan Infrastructure

```bash
terraform plan
```

### 4. Apply Changes

```bash
terraform apply
```

---

## 🔐 Remote Backend Configuration

This project uses:

* **S3 Bucket** → Store Terraform state
* **DynamoDB Table** → State locking

This ensures:

* No state conflicts
* Safe team collaboration

---

## 📈 Key Learnings

* Infrastructure as Code (IaC) best practices
* Multi-environment deployment strategy
* Terraform modularization
* AWS resource provisioning
* State management using S3 & DynamoDB

---

## 💡 Future Improvements

* Add CI/CD pipeline (GitHub Actions / Jenkins)
* Integrate monitoring (CloudWatch)
* Use Terraform workspaces
* Add VPC and networking setup

---

## 🙌 Acknowledgements

This project is part of my DevOps learning journey, focusing on real-world AWS infrastructure design.

---

## 📬 Connect with Me

* LinkedIn: https://www.linkedin.com/in/rohit-aute-a5b529249
* Email: [rohit.aute450@gmail.com.com](mailto:rohit.aute450gmail.com)

---

## ⭐ If you like this project

Give it a ⭐ on GitHub — it motivates me to build more!
