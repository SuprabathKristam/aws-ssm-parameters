resource "aws_ssm_parameter" "parameters" {
  for_each = var.parameters
  name     = each.key
  type     = "String"
  value    = each.value
  key_id   = var.key_id  #Using KMS as we are storing the data
}

resource "aws_ssm_parameter" "secrets" {
  for_each = var.secrets
  name     = each.key
  type     = "SecureString"  #Using secure as we are storing the password
  value    = each.value
  key_id   = var.key_id
}