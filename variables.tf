variable "AWS_ACCESS_KEY" {
}

variable "AWS_SECRET_KEY" {
}

variable "AWS_REGION" {
  default = "ap-northeast-1"
}

variable "BUCKET_NAME" {
  type = map(string)

  default = {
    stg      = ""
    prod     = ""
    aws-test = ""
  }
}

variable "SUB_DOMAIN" {
  type = map(string)

  default = {
    stg      = ""
    prod     = ""
    aws-test = ""
  }
}

variable "acm_arn" {
  default = ""
}

variable "lamda_arn" {
  default = ""
}

