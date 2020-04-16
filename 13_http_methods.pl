use Mojolicious::Lite;
plugin 'AutoReload';

# Routes can be restricted to specific request methods with different keywords like "get" in 
# Mojolicious::Lite and "any" in Mojolicious::Lite.

# GET /hello
get '/hello' => sub {
  my $c = shift;
  $c->render(text => 'Hello World!');
};

# PUT /hello
put '/hello' => sub {
  my $c    = shift;
  my $size = length $c->req->body;
  $c->render(text => "You uploaded $size bytes to /hello.");
};

# GET|POST|PATCH /bye
any ['GET', 'POST', 'PATCH'] => '/bye' => sub {
  my $c = shift;
  $c->render(text => 'Bye World!');
};

# * /whatever
any '/whatever' => sub {
  my $c      = shift;
  my $method = $c->req->method;
  $c->render(text => "You called /whatever with $method.");
};

app->start;