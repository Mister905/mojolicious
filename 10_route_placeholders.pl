use Mojolicious::Lite;
plugin 'AutoReload';

# /foo/test
# /foo/test123
get '/foo/:bar' => sub {
  my $c   = shift;
  my $bar = $c->stash('bar');
  $c->render(text => "Our :bar placeholder matched $bar");
};

# /testsomething/foo
# /test123something/foo
get '/<:bar>something/foo' => sub {
  my $c   = shift;
  my $bar = $c->param('bar');
  $c->render(text => "Our :bar placeholder matched $bar");
};

app->start;