variable "user_names" {
  description = "IAM usernames"
  type        = list(string)
  default     = ["user1", "user2", "user3"]
}


variable "components" {
  default = {
    frontend = {
      name          = "frontend"
      instance_type = "t3.small"
    }

    mongodb = {
      name          = "mongodb"
      instance_type = "t3.micro"
    }
    catalogue = {
      name          = "catalogue"
      instance_type = "t3.micro"
    }
    redis = {
      name          = "redis"
      instance_type = "t3.small"
    }
    user = {
      name          = "user"
      instance_type = "t3.small"
    }
    cart = {
      name          = "cart"
      instance_type = "t3.small"
    }
    mysql = {
      name          = "mysql"
      instance_type = "t3.small"
    }
    shipping = {
      name          = "shipping"
      instance_type = "t3.medium"
    }
    rabbitmq = {
      name          = "rabbitmq"
      instance_type = "t3.small"
    }
    payment = {
      name          = "payment"
      instance_type = "t3.small"
    }
    dispatch = {
      name          = "dispatch"
      instance_type = "t3.small"
    }
  }
}

output "print_the_names" {
  value = [for name in var.user_names : name]
}
output "print_the_components" {
  value = [for name in var.components : name]
}