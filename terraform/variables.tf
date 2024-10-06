variable "region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "ami_id" {
  description = "Amazon Machine Image (AMI) ID for EC2 instances"
  default     = "ami-0fff1b9a61dec8a5f"  # Replace with your preferred AMI ID
}

variable "github_token" {
  description = "GitHub OAuth token for pulling the repository"
  type        = string
}

variable "github_repo" {
  description = "GitHub repository containing the code"
  default     = "namdeopawar/AWS_CD_BG_Stratergy"
}

