# resource "aws_vpc" "main" {
#   cidr_block = var.vpc_cidr_block

#   tags = {
#     Name = "${terraform.workspace}-vpc"
#   }
# }

# resource "aws_subnet" "public" {
#   count                  = length(var.public_subnet_cidr_blocks)
#   vpc_id                 = aws_vpc.main.id
#   cidr_block             = var.public_subnet_cidr_blocks[count.index]
#   availability_zone      = var.availability_zones[count.index % length(var.availability_zones)]
#   map_public_ip_on_launch = true

#   tags = {
#     Name = "${terraform.workspace}-public-subnet-${count.index}"
#   }
# }

# resource "aws_subnet" "private" {
#   count             = length(var.private_subnet_cidr_blocks)
#   vpc_id            = aws_vpc.main.id
#   cidr_block        = var.private_subnet_cidr_blocks[count.index]
#   availability_zone = var.availability_zones[count.index % length(var.availability_zones)]

#   tags = {
#     Name = "${terraform.workspace}-private-subnet-${count.index}"
#   }
# }

# resource "aws_internet_gateway" "gw" {
#   vpc_id = aws_vpc.main.id

#   tags = {
#     Name = "${terraform.workspace}-igw"
#   }
# }

# resource "aws_route_table" "public_route_table" {
#   vpc_id = aws_vpc.main.id

#   route {
#     cidr_block = "0.0.0.0/0"
#     gateway_id = aws_internet_gateway.gw.id
#   }

#   tags = {
#     Name = "${terraform.workspace}-public-route-table"
#   }
# }

# resource "aws_route_table_association" "public_rt_association" {
#   count          = length(aws_subnet.public)
#   subnet_id      = aws_subnet.public[count.index].id
#   route_table_id = aws_route_table.public_route_table.id
# }

# resource "aws_eip" "eip" {
#   count      = length(var.availability_zones)
#   vpc        = true
#   depends_on = [aws_internet_gateway.gw]
# }

# resource "aws_nat_gateway" "nat_gw" {
#   count         = length(var.availability_zones)
#   allocation_id = aws_eip.eip[count.index].id
#   subnet_id     = aws_subnet.public[count.index].id
#   depends_on    = [aws_internet_gateway.gw]
# }

# resource "aws_route_table" "private_route_table" {
#   count  = length(var.availability_zones)
#   vpc_id = aws_vpc.main.id

#   route {
#     cidr_block     = "0.0.0.0/0"
#     nat_gateway_id = aws_nat_gateway.nat_gw[count.index].id
#   }

#   tags = {
#     Name = "${terraform.workspace}-private-rt-${count.index}"
#   }
# }

# resource "aws_route_table_association" "private_rt_association" {
#   count          = length(aws_subnet.private)
#   subnet_id      = aws_subnet.private[count.index].id
#   route_table_id = aws_route_table.private_route_table[count.index].id
# }
