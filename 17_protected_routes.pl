use Mojolicious::Lite;
plugin 'AutoReload';

# Authenticate based on name parameter
under sub {
  my $c = shift;

  # Authenticated
  my $name = $c->param('name') || '';
  return 1 if $name eq 'Bender';

  # Not authenticated
  $c->render(template => 'denied');
  return undef;
};

# Only reached when authenticated
get '/' => 'index';

app->start;
__DATA__

@@ denied.html.ep
You are not Bender, permission denied.

@@ index.html.ep
Hi Bender.