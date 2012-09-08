# standard Hash-literal syntax:
{
  :short => 'bar',
  :much_longer => 'baz'
}


# should become:
{
  :short       => 'bar',
  :much_longer => 'baz'
}

# but 1.9 Hash-literal syntax:
{
  short:'bar',
  much_longer:'baz'
}

# should become:
{
  short:       'bar',
  much_longer: 'baz'
}

# Normal variable assignment

hi = "there"
howare="you"

# should before 

hi     = "there"
howare = "you"