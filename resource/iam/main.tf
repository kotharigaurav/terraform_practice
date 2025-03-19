###################################
# IAM Role
###################################

module "iam_role_module" {
  source    = "../../modules/iam"
#   role_name = local.iam_role_name
}

module "iam_policy_module" {
  source      = "../../modules/iam"
#   policy_name = local.iam_policy_name
}