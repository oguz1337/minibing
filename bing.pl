#!/usr/bin/perl 
#calma pls	
#Coder: SyberCodeV1 www.sybercodev1.com

use HTTP::Request;
use LWP::Simple;
use LWP::UserAgent;
use Win32::Console::ANSI;
use IO::Socket::INET;
use Term::ANSIColor;
use IO::Select;
use HTTP::Response;
use HTTP::Request::Common qw(POST);
use HTTP::Request::Common qw(GET);
use URI::URL;



print q{
 ____  _             ____                      _     
| __ )(_)_ __   __ _/ ___|  ___  __ _ _ __ ___| |__  
|  _ \| | '_ \ / _` \___ \ / _ \/ _` | '__/ __| '_ \ 
| |_) | | | | | (_| |___) |  __/ (_| | | | (__| | | |
|____/|_|_| |_|\__, |____/ \___|\__,_|_|  \___|_| |_|
               |___/                                 
                           ______          __
                          /_  __/__  ___  / /
                           / / / _ \/ _ \/ / 
                          /_/  \___/\___/_/ 

        Coder: SyberCodeV1 & www.sybercodev1.com

};
$ag = LWP::UserAgent->new();
$ag->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$ag->timeout(10);

print "Anahtar Kelimeyi Gir: ";
$dork=<STDIN>;
chomp $dork;
print , "\n";

for (my $i=1; $i<=2000; $i+=10) {
$url = "http://www.bing.com/search?q=$dork&filt=all&first=$i&FORM=PERE";
$resp = $ag->request(HTTP::Request->new(GET => $url));
$rrs = $resp->content;

while($rrs =~ m/<a href=\"?http:\/\/(.*?)\//g){

$link = $1;
	if ( $link !~ /overture|msn|live|bing|yahoo|duckduckgo|google|w3|microsof/)
	{
				if ($link !~ /^http:/)
			 {
				$link = 'http://' . "$link" . '/';
			 }



if($link !~ /\"|\?|\=|index\.php/){
					if  (!  grep (/$link/,@result))
					{
print "$link\n";
open(save, '>>kaydedilen.txt');
    print save "$link\n";
    close(save);
						push(@result,$link);
					}
} 
}
}
}

exit