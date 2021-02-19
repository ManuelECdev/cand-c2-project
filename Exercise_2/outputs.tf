# TODO: Define the output variable for the lambda function.

output "udacity_lambda" {
  value = aws_lambda_function.udacity_lambda.qualified_arn
}
