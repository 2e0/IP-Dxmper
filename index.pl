use HTTP::Client;
use warnings;
use Net::IP;
use Color::Fade;
use WWW::Pastebin::Sprunge::Create;


                                                
print "\n";
print "\n";
print "\n";                                               
           
                                     
print "       --.--.--.       .--.                            \n";
print "         |  |   )      |   :                           \n";
print "         |  |--'  ____ |   |-. ,-.--.--. .,-.  .-. .--.\n";
print "         |  |          |   ;  :  |  |  | |   )(.-' |   \n";
print "       --'--'          '--' -' `-'  '  `-|`-'  `--''  \n ";
print "                                         |             \n";
print "\n";
print "\n";
print "\n";
print "IP (v4/6/12): \n";
$ip = <>;
my $ip = new Net::IP ($ip) or die (Net::IP::Error());


print ("IP : ".$ip->ip()."\n");
print ("Sho : ".$ip->short()."\n");
print ("Bin : ".$ip->binip()."\n");
print ("Int : ".$ip->intip()."\n");
print ("Mask : ".$ip->mask()."\n");
print ("Dern : ".$ip->last_ip()."\n");
print ("Len : ".$ip->prefixlen()."\n");
print ("Taille : ".$ip->size()."\n");
print ("Rev :  ".$ip->reverse_ip()."\n");
print ("IPv :  ".$ip->ip_get_version()."\n");

my $client  = HTTP::Client->new();
my $site    = $client->get("http://extreme-ip-lookup.com/json/$ip?key=demo2");
my @headers = $client->response_headers;
my $agent   = $client->agent;
my $content = $client->content_type;

print "Veux-tu mettre la LOG-TYPE(v4) sur sprunge.us? 1 (yes)/2 (no)\n";



$rep = <>;



if($rep = "1") {
	my $sprunge1 = WWW::Pastebin::Sprunge::Create->new;
	my $sprunge2 = WWW::Pastebin::Sprunge::Create->new;
	my $sprunge3 = WWW::Pastebin::Sprunge::Create->new;
	my $sprunge4 = WWW::Pastebin::Sprunge::Create->new;
	$sprunge1->paste($agent);
	$sprunge2->paste($ip);
	$sprunge3->paste($content);
	$sprunge4->paste($site);
	print "S.I.T.E : $sprunge4\n",
	print "AGENT : $sprunge1\n";
	print "IP : $sprunge2\n",
	print "CONTENT : $sprunge3\n",
}









