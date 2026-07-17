# MediaStream

A cloud-native video streaming platform inspired by YouTube, built to explore and implement modern microservices architecture patterns.

MediaStream was developed as an experimental project to understand how large-scale distributed applications are designed, deployed, tested, and maintained. The application decomposes video platform functionality into independent services that communicate through both synchronous and asynchronous messaging patterns.

## Project Goals

This project was created to:

* Explore microservices architecture in a real-world application.
* Understand service-to-service communication patterns.
* Implement containerization and cloud deployment workflows.
* Gain hands-on experience with Kubernetes and Azure.
* Build automated Continuous Delivery pipelines.
* Experiment with multiple levels of automated testing.

---

## Architecture Overview

MediaStream follows a microservices architecture where each business capability is implemented as an independent service.

### Core Services

| Service         | Responsibility                           |
| --------------- | ---------------------------------------- |
| Gateway         | API Gateway and request routing          |
| Video Upload    | Handles video upload operations          |
| Video Streaming | Streams video content to users           |
| Metadata        | Stores and manages video metadata        |
| History         | Maintains user watch history             |
| Azure Storage   | Integration with Azure Blob Storage      |
| Mock Storage    | Local development storage implementation |
| DB Fixture API  | Test and seed data management            |

---

## Technology Stack

### Backend

* Node.js
* JavaScript
* Express.js

---

### Messaging & Communication

#### Synchronous Communication

* HTTP REST APIs

Used for direct request-response interactions between services.

#### Asynchronous Communication

* RabbitMQ

Used for event-driven communication between microservices where loose coupling is preferred.

---

## Containerization

Docker is used to package each microservice independently.

Benefits include:

* Environment consistency
* Service isolation
* Simplified deployment
* Scalability
* Portability across environments

The project includes:

```text
docker-compose.yml
```

for local multi-service development and testing.

---

## Cloud Infrastructure

### Microsoft Azure

MediaStream is deployed to Microsoft Azure using Kubernetes.

### Infrastructure as Code

Terraform is used to provision and manage cloud resources.

Infrastructure automation includes:

* Kubernetes cluster deployment
* Service configuration
* Networking setup
* Environment provisioning

This approach enables repeatable and version-controlled infrastructure management.

---

## Kubernetes Deployment

All services are designed to run independently inside Kubernetes.

Benefits gained through Kubernetes:

* Service orchestration
* Automatic scaling
* Self-healing containers
* Rolling deployments
* Improved reliability

---

## CI/CD Pipeline

A Continuous Delivery pipeline was implemented to automate deployment to production environments.

### Pipeline Responsibilities

* Build application services
* Execute automated tests
* Package Docker images
* Publish artifacts
* Deploy infrastructure updates
* Deploy microservices to Kubernetes

The repository includes:

```text
bitbucket-pipelines.yml
```

which defines the deployment workflow.

---

## Testing Strategy

A multi-layer testing approach was implemented to improve reliability.

### Unit Testing

**Framework:** Jest

Used to validate individual functions and components in isolation.

### Integration Testing

**Framework:** Jest

Used to verify interactions between services and system components.

### End-to-End Testing

**Framework:** Cypress

Used to validate complete user workflows from the frontend through backend services.

### Automated Testing in CI/CD

All automated tests were integrated into the deployment pipeline to ensure quality gates before deployment.

---

## Project Structure

```text
mediastream
│
├── azure-storage/
├── cypress/
├── db-fixture-rest-api/
├── fixtures/
│   └── two-videos/
├── gateway/
├── history/
├── metadata/
├── mock-storage/
├── scripts/
├── video-streaming/
├── video-upload/
│
├── bitbucket-pipelines.yml
├── cypress.json
├── docker-compose.yml
├── package.json
└── package-lock.json
```

---

## Lessons Learned

Building MediaStream provided valuable insight into the challenges and advantages of distributed systems compared to traditional monolithic applications.

Key takeaways included:

* Designing service boundaries
* Managing inter-service communication
* Handling distributed deployments
* Automating infrastructure provisioning
* Building reliable deployment pipelines
* Implementing comprehensive automated testing strategies
* Operating applications in Kubernetes environments

---

## Author

**Himani**

MediaStream was built as a learning project to gain practical experience with modern cloud-native microservices architecture, DevOps practices, and distributed system design.

---
