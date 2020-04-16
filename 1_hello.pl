use Mojolicious::Lite;
plugin 'AutoReload';

get '/' => sub {
  my $c = shift;
  $c->render(text => 'Hello World!');
};

app->start;