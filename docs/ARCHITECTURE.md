# AWS Compute Module Architecture

## Overview
This module manages EC2 instances, Launch Templates, and Auto Scaling Groups in a modular and reusable way. Each component is independent and can be deployed separately or orchestrated via a pipeline.

## Module Interactions
- **EC2 Instance Module**
  - Creates individual EC2 instances.
  - Can be used for standalone instances or as part of an ASG.
- **Launch Template Module**
  - Serves as a blueprint for EC2 instances.
  - Provides instance type, AMI, security groups, key pair, and user data.
  - Used by ASG or EC2 modules.
- **Auto Scaling Group Module**
  - Automatically scales EC2 instances based on desired capacity.
  - Uses Launch Template to launch instances.
  - Integrates with subnet IDs and security groups from AWS Network module.

## Data Flow
1. Network module provides subnet IDs and security groups.
2. Launch Template module fetches AMI and user data templates.
3. ASG module consumes Launch Template ID and subnet IDs.
4. EC2 instances are launched either standalone or through ASG.

## Diagram
- `diagrams/compute-architecture.drawio`
- `diagrams/autoscaling-flow.png`
- `diagrams/instance-lifecycle.mmd`

