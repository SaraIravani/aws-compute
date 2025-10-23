# Design Decisions for AWS Compute Module

## Modular Approach
- Each major component (EC2, Launch Template, ASG) is in a separate module.
- Enables independent deployment, testing, and versioning.

## Launch Template
- Decouples instance configuration from ASG.
- Supports reusability and consistency across multiple environments.

## Auto Scaling Group
- Supports enterprise best practices:
  - Dynamic scaling
  - Health checks
  - Tag propagation
  - Lifecycle management

## Multi-Repo Structure
- Network, Security, Monitoring, and Storage modules are separate repositories.
- EC2 module references Network and Security outputs.
- Pipeline can orchestrate all modules together.

