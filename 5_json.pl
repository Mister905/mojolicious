use Mojolicious::Lite;
plugin 'AutoReload';

# Modify the received JSON document and return it
put '/reverse' => sub {
  my $c    = shift;
  my $hash = $c->req->json;
  $hash->{message} = reverse $hash->{message};
  $c->render(json => $hash);
};

app->start;