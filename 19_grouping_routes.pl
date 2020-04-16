use Mojolicious::Lite;
plugin 'AutoReload';

# Global logic shared by all routes
under sub {
  my $c = shift;
  return 1 if $c->req->headers->header('X-Bender');
  $c->render(text => "You're not Bender.");
  return undef;
};

# Admin section
group {

  # Local logic shared only by routes in this group
  under '/admin' => sub {
    my $c = shift;
    return 1 if $c->req->headers->header('X-Awesome');
    $c->render(text => "You're not awesome enough.");
    return undef;
  };

  # GET /admin/dashboard
  get '/dashboard' => {text => 'Nothing to see here yet.'};
};

# GET /welcome
get '/welcome' => {text => 'Hi Bender.'};

app->start;