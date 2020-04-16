use Mojolicious::Lite;
plugin 'AutoReload';

# The first argument passed to all actions ($c) is a Mojolicious::Controller object, 
# containing both the HTTP request and response.
get '/foo' => sub {
  my $c = shift;
  $c->render(text => 'Hello World!');
};

# All GET and POST parameters sent with the request are accessible via "param" in Mojolicious::Controller
# /bar?user=James
get '/bar' => sub {
  my $c    = shift;
  my $user = $c->param('user');
  $c->render(text => "Hello $user.");
};

app->start;