use Mojolicious::Lite;
plugin 'AutoReload';

# Not found (404)
get '/missing' => sub { shift->render(template => 'does_not_exist') };

# Exception (500)
get '/dies' => sub { die 'Intentional error' };

app->start;