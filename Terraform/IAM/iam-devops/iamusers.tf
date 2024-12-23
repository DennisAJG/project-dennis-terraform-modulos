resource "aws_iam_user" "iam_user_getrak_devops" {
  for_each = var.iam_user_getrak_devops

  name          = "${each.key}-${each.value.job}-${each.value.nivel}-getrak"
  force_destroy = true
}

resource "aws_iam_access_key" "iam_access_key_getrak" {
  for_each = var.iam_user_getrak_devops

  user = aws_iam_user.iam_user_getrak_devops[each.key].name
}
