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
  short: 'bar',
  much_longer: 'baz'
}

# should become:
{
  short:       'bar',
  much_longer: 'baz'
}