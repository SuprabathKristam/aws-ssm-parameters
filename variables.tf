variable "key_id" {
  default = "arn:aws:kms:us-east-1:872150321686:key/989e4ac3-688b-456b-ac1f-a5d42e0ae5d4" # This id(ARN) we are taking it from KMS from AWS Console
}

variable "parameters" {
  default = {
    dev.expense.rds.username = "admin1" # we named it like this to just match our context
  }
}
#Note : In organizations we never keep passwords in git repo's at any cost here in lab just to learn we are hard coding and declaring them in git repos
variable "secrets" {
  default = {
    dev.expense.rds.password = "ExpenseApp123" # we named it like this to just match our context
  }
}