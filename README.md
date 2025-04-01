# CST8918 W25 Lab 12 - Terraform CI/CD on Azure

## Team Members
- Shivareddy Sama 
-stefeena

This lab involved working with Terraform for automating infrastructure deployment on Azure, as well as setting up GitHub Actions for CI/CD workflows. The tasks were broken into several steps, including configuring Terraform, setting up GitHub Actions workflows, and verifying the deployments to Azure.
Task 1-5: Completion
Task 1: Setup Azure Resources
Terraform configuration was set up to create resources like virtual networks, subnets, and other necessary components in Azure.

Terraform configuration and backend setup were done successfully with Azure authentication via OpenID Connect (OIDC).

Task 2: Create GitHub Actions Workflows
Static code analysis and integration tests were set up using GitHub Actions workflows.

Static code analysis workflow was created to run terraform fmt, terraform validate, and checkov for security checks.

Integration tests were configured to run terraform init, terraform plan, and tflint.

Task 3: Deployment Workflow
Deployment workflow was configured to run on merge to the main branch, applying Terraform configurations to Azure.

Task 4: GitHub Secrets Setup
GitHub secrets such as AZURE_TENANT_ID, AZURE_SUBSCRIPTION_ID, AZURE_CLIENT_ID, and ARM_ACCESS_KEY were added correctly to enable seamless authentication with Azure in GitHub Actions.

Task 5: Infrastructure Verification
A pull request was created for testing, and the workflows triggered appropriately.

Static analysis, integration tests, and deployment workflows were executed without issues.




**Conclusion**


Tasks 1 to 5 were completed successfully, and the GitHub Actions workflows ran as expected for static code analysis, integration tests, and deployment. However, Task 6 encountered errors due to missing configuration files and issues with running certain tools (checkov and terraform plan).

The following actions are needed to resolve the issues:

Ensure that all necessary Terraform configuration files are present in the repository.

Update workflow files to correctly reference all required Terraform configurations.

Investigate and fix any issues with the checkov tool integration.

This report summarizes the work completed and the issues encountered during the lab. Further debugging and adjustments will be necessary to complete Task 6 and ensure proper deployment.
