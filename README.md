# AWS Blue-Green Deployment Strategy

## Overview

This repository provides a comprehensive guide and implementation of the **Blue-Green Deployment** strategy using AWS services. This deployment approach ensures zero-downtime updates, allowing you to release new features and updates while keeping your application fully operational.

## Key Concepts

- **Blue-Green Deployment**: A deployment strategy that reduces downtime and risk by running two identical production environments, referred to as "Blue" and "Green." The current version runs in the Blue environment, while the new version is deployed in the Green environment. Once the new version is validated, traffic is switched from Blue to Green.

## AWS Services Used

This project utilizes several AWS services to implement Blue-Green Deployment, including:

- **AWS CodeDeploy**: Automates the deployment of applications to Amazon EC2 instances.
- **Elastic Load Balancer (ELB)**: Distributes incoming application traffic across multiple targets.
- **Auto Scaling Groups (ASG)**: Automatically adjusts the number of EC2 instances based on the application's needs.
- **AWS CodePipeline**: Automates the CI/CD pipeline for streamlined deployment processes.

## Getting Started

### Prerequisites

- An AWS account
- Basic knowledge of AWS services (EC2, ELB, CodeDeploy, CodePipeline)
- AWS CLI installed and configured

### Repository Structure

- `launch-template/`: Contains launch templates used for configuring EC2 instances.
- `app-spec.yml`: AWS CodeDeploy application specification file.
- `before-install.sh`: Script executed before the application installation.
- `application-start.sh`: Script executed to start the application.
- `index.html`: Sample HTML file served by the web application.

### How to Use

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/namdeopawar/AWS_CD_BG_Stratergy.git
   cd AWS_CD_BG_Stratergy
   ```

2. **Set Up AWS Resources**:
   - Configure your EC2 instances and Load Balancers as outlined in the guide.
   - Create the necessary launch templates and scaling policies.

3. **Deploy the Application**:
   - Use AWS CodeDeploy to deploy your application to the Green environment.
   - Monitor the deployment status through the AWS Management Console.

4. **Traffic Management**:
   - Shift traffic from the Blue environment to the Green environment once the deployment is verified.

## Best Practices

- Implement health checks in your Load Balancer to ensure instance availability.
- Use version control for your application code and deployment scripts.
- Regularly test your deployment process to minimize risks during production updates.

## Contributing

Contributions are welcome! If you have suggestions for improvements or want to add features, please fork the repository and create a pull request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
