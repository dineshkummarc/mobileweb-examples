package cache1;
use Dancer ':syntax';
use DateTime;

our $VERSION = '0.1';

get '/' => sub {
    send_file 'index.html';
};

get '/manifest' => sub {
    send_file('full.appcache', content_type => 'text/cache-manifest');
};

get '/time' => sub {
    return time;
};

true;
