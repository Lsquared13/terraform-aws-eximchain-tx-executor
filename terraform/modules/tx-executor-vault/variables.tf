# ---------------------------------------------------------------------------------------------------------------------
# REQUIRED PARAMETERS
# You must provide a value for each of these parameters.
# ---------------------------------------------------------------------------------------------------------------------
variable "vault_amis" {
  description = "A mapping from AWS region to AMI to use for vault in that region."
  type        = "map"
}

variable "cert_owner" {
  description = "The OS user to be made the owner of the local copy of the vault certificates. Should usually be set to the user operating the tool."
}

variable "public_key_path" {
  description = "The path to the public key that will be used to SSH the instances in this region."
}

variable "transaction_executor_iam_role" {
  description = "The IAM role used by the transaction executor"
}

variable "eximchain_node_iam_role" {
  description = "The IAM role used by the transaction executor"
}

variable "aws_vpc" {
  description = "The VPC to create the vault in"
}

# ---------------------------------------------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
# These parameters have reasonable defaults.
# ---------------------------------------------------------------------------------------------------------------------
variable "aws_region" {
  description = "The AWS region to deploy into (e.g. us-east-1)."
  default     = "us-east-1"
}

variable "vault_port" {
  description = "The port that vault will be accessible on."
  default     = 8200
}

variable "force_destroy_s3_bucket" {
  description = "Whether or not to force destroy the vault s3 bucket. Set to true for an easily destroyed test environment. DO NOT set to true for a production environment."
  default     = false
}

variable "vault_cluster_size" {
  description = "The number of instances in the vault cluster"
  default     = 3
}

variable "vault_instance_type" {
  description = "The type of instance to use in the vault cluster"
  default     = "t2.micro"
}

variable "consul_cluster_size" {
  description = "The number of instances in the consul cluster"
  default     = 3
}

variable "consul_instance_type" {
  description = "The type of instance to use in the consul cluster"
  default     = "t2.micro"
}

variable "lb_ssl_policy" {
  description = "The SSL policy to use for the vault load balancer"
  default     = "ELBSecurityPolicy-2016-08"
}

variable "cert_org_name" {
  description = "The organization to associate with the vault certificates."
  default     = "Example Co."
}
