locals {
  fly_region = "lhr"
  fly_org    = "giffon"
}

# resource "fly_app" "charleywong" {
#   name = "charleywong"
#   org  = local.fly_org
# }

# resource "random_pet" "charleywong" {
#   length = 6
# }

# resource "fly_machine" "charleywong" {
#   app    = fly_app.charleywong.name
#   region = local.fly_region
#   name   = random_pet.charleywong.id
#   image  = "nginx"
#   env = {
#     key = "value"
#   }
#   services = [
#     {
#       ports = [
#         {
#           port     = 443
#           handlers = ["tls", "http"]
#         },
#         {
#           port     = 80
#           handlers = ["http"]
#         }
#       ]
#       "protocol" : "tcp",
#       "internal_port" : 80
#     }
#   ]
# }
