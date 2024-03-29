variable "region" {
  type        = string
  description = "IBM Cloud region where your application will be deployed (to view your current targeted region `ibmcloud cr region`)"
  default     = "us-south"
}

variable "registry_namespace" {
  type        = string
  description = "Container registry namespace to save images (`ibmcloud cr namespaces`). NOTE: If you do not override this value with a namespace that already exists, a new namespace will be created."
  default     = "examplebank<timestamp>"
}

variable "resource_group" {
  type        = string
  description = "Resource group where the resources will be created (`ibmcloud resource groups`)"
  default     = "default"
}

variable "default_pool_size" {
  type        = string
  description = "Number of worker nodes for the new Kubernetes cluster"
  default     = "3"
}

variable "datacenter" {
  type        = string
  description = "Zone from `ibmcloud ks zones --provider vpc-classic`"
  default     = "us-south-1"
}

variable "machine_type" {
  type        = string
  description = "Name of machine type from `ibmcloud ks flavors --zone <ZONE>`"
  default     = "bx2.4x16"
}

variable "kube_version" {
  type        = string
  description = "Version of OpenShift to apply to the new Kubernetes cluster (Ex. '4.8.21_openshift', Run: `ibmcloud ks versions` to see available versions)"
}

variable "ibmcloud_api_key" {
  type        = string
  description = "The IAM API Key for IBM Cloud access (https://cloud.ibm.com/iam/apikeys)"
}

variable "sm_name" {
  type        = string
  description = "Name of the Secrets Manager tool integration (Ex. my-secrets-manager)"
  default     = "bank-secrets"
}

variable "sm_service_name" {
  type        = string
  description = "Name of the Secrets Manager service. NOTE: Only 1 Secrets Manager instance is allowed. If you already have a Secrets Manager service provisioned, please override this value to its name."
  default     = "bank-secrets-manager"
}

variable "gitlab_token" {
  type        = string
  description = "A GitLab Personal Access Token (Ex. https://us-south.git.cloud.ibm.com/-/profile/personal_access_tokens NOTE: Make sure to create your token in the same region as your toolchain, or 'region' variable.)"
}

variable "scc_name" {
  type        = string
  description = "Name for the Security and Compliance Center (SCC) integration tool"
  default     = "bank-scc"
}

variable "scc_trigger" {
  type        = string
  description = "Setting to trigger validation scan after deploy (options: 'enabled' or 'disabled')"
  default     = "enabled"
}

variable "scc_profile" {
  type        = string
  description = "Name of an existing SCC Profile"
  default     = "IBM Cloud Best Practices Controls 1.0"
}

variable "scc_scope" {
  type        = string
  description = "Name of an existing SCC Scope (See instructions on creating a scope here: https://cloud.ibm.com/docs/security-compliance?topic=security-compliance-scopes"
}
