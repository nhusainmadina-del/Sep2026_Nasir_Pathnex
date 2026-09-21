resource "aws_eks_node_group" "pathnex-NG" {
  cluster_name    = aws_eks_cluster.pathnex.name
  node_group_name = "pathnex-ng"

  node_role_arn = "arn:aws:iam::276739967641:role/AmazonEKSNodeRole"

  subnet_ids = [
    "subnet-025c48c1602cf8147",
    "subnet-0cd87cd617412b7c0",
    "subnet-0cb878c5ee8f6103f"
  ]

  version        = "1.35"
  ami_type       = "AL2023_x86_64_STANDARD"
  capacity_type  = "SPOT"
  instance_types = ["t3.small"]
  disk_size      = 20

  scaling_config {
    desired_size = 1
    min_size     = 1
    max_size     = 2
  }

  tags = {
  "k8s.io/cluster-autoscaler/enabled"          = "true"
  "k8s.io/cluster-autoscaler/Pathnex-Sep-2026" = "owned"
  }
  
  lifecycle {
  ignore_changes = [
    scaling_config[0].desired_size
  ]
  }



  update_config {
    max_unavailable = 1
    update_strategy = "DEFAULT"
  }

  remote_access {
    ec2_ssh_key = "pathnex"

    source_security_group_ids = [
      "sg-0b8a6e5aab89fc088"
    ]
  }
}
