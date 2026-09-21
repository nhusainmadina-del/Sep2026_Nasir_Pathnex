resource "aws_eks_cluster" "pathnex" {
  name     = "Pathnex-Sep-2026"
  role_arn = "arn:aws:iam::276739967641:role/AmazonEKSClusterRole"
  version  = "1.35"

  upgrade_policy {
    support_type = "STANDARD"
  }

  vpc_config {
    subnet_ids = [
      "subnet-025c48c1602cf8147",
      "subnet-0cd87cd617412b7c0",
      "subnet-0cb878c5ee8f6103f"
    ]

    security_group_ids = [
      "sg-0b8a6e5aab89fc088"
    ]

    endpoint_public_access  = true
    endpoint_private_access = true

    public_access_cidrs = [
      "0.0.0.0/0"
    ]
  }
  zonal_shift_config {
         enabled = false
        }
}
