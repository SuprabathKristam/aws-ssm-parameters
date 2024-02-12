resource "aws_ssm_parameter" "parameters" {
  for_each = var.parameters
  name  = each.key
  type  = "String"
  value = each.value
  key_id = var.key_id     # we should go with KMS when we are storing the data
}

resource "aws_ssm_parameter" "secrets" {
  for_each = var.secrets
  name  = each.key
  type  = "SecureString"   #Using secure string as we are going to store password
  value = each.value
  key_id = var.key_id
}