# 概要

## 目的

個人開発用にサーバレス環境を構築

## 使っているリソースについて

### AWS

#### terraform で管理しているリソース

- S3
- CloudFront
- Route53

#### terraform で管理していないリソース

- lamda
- ACM
- S3
  - terraform status 管理

# 使い方

## 環境構築方法

```
$cd terraform

$terraform init

$terraform plan

$terraform apply
```

## 環境切り替え方法

```
$terraform workspace list
 default
 stg   => 開発環境
 prod  => 本番環境

$tarraform workspaceb select {利用したい環境}
```

# 入力値と出力値

＊terraform-docs を利用して作成: https://github.com/terraform-docs/terraform-docs

## Requirements

| Name      | Version   |
| --------- | --------- |
| terraform | >= 0.14.2 |

## Providers

| Name | Version |
| ---- | ------- |
| aws  | n/a     |

## Inputs

| Name           | Description | Type          | Default                                                             | Required |
| -------------- | ----------- | ------------- | ------------------------------------------------------------------- | :------: |
| AWS_ACCESS_KEY | n/a         | `any`         | n/a                                                                 |   yes    |
| AWS_REGION     | n/a         | `string`      | `"ap-northeast-1"`                                                  |    no    |
| AWS_SECRET_KEY | n/a         | `any`         | n/a                                                                 |   yes    |
| BUCKET_NAME    | n/a         | `map(string)` | <pre>{<br> "aws-test": "",<br> "prod": "",<br> "stg": ""<br>}</pre> |    no    |
| SUB_DOMAIN     | n/a         | `map(string)` | <pre>{<br> "aws-test": "",<br> "prod": "",<br> "stg": ""<br>}</pre> |    no    |
| acm_arn        | n/a         | `string`      | `""`                                                                |    no    |
| lamda_arn      | n/a         | `string`      | `""`                                                                |    no    |

## Outputs

| Name           | Description |
| -------------- | ----------- |
| route53_recode | n/a         |
| s3_bucket_name | n/a         |

## Outputs

| Name           | Description |
| -------------- | ----------- |
| route53_recode | n/a         |
| s3_bucket_name | n/a         |

# その他
