resource "aws_internet_gateway" "igw" {
  vpc_id = var.vpc_id
  tags = merge(
    var.tags, {Name = "${var.app}-${var.environment}-igw"}
  )
}