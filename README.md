This a repo specifically for creating awesome stacks for AWS using the IaC tool called cloud formation. the first file `stack.yaml` deploys a simple EC2 instance with a security group and exposes port 22 for SSH.

Some CloudFormation updates Behaviour:

- cloudFormation updates resources based on differences between what you submit and stack's current template.
- Update with no interruption
    - Without disrupting resources operation & without changing physical ID
    - Example: updating the IAM instance profile (IamInstanceProfile) of an EC2 instance
- Update with some interruption
    - example: updating EC2 instance type from t2.Micro to t2.Large
- Replacement
    - Recreate the resource with new physical ID
    - Create the new resource, change references from the other resources to the new resource, then delete the old resource.
    - Example: updating an RDS DB instance availability zone (Availability zone)
    