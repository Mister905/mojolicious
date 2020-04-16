use Mojolicious::Lite;
plugin 'AutoReload';

# A very easy way to make placeholders more restrictive are alternatives, you just make a list of possible values.
# /test
# /123
any '/:foo' => [foo => ['test', '123']] => sub {
  my $c   = shift;
  my $foo = $c->param('foo');
  $c->render(text => "Our :foo placeholder matched $foo");
};

app->start;