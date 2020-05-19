=begin comment

Aspose.3D Cloud API Reference

No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 3.0

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end comment

=cut

#
# NOTE: This class is auto generated by Swagger Codegen
# Please update the test cases below to test the API endpoints.
# Ref: https://github.com/swagger-api/swagger-codegen
#
use Test::More tests => 1; #TODO update number of test cases
use Test::Exception;

use lib 'lib';
use strict;
use warnings;

use_ok('AsposeThreeDCloud::OAuthApi');
use_ok('AsposeThreeDCloud::Configuration');
use_ok('AsposeThreeDCloud::ApiClient');

my $config = AsposeThreeDCloud::Configuration->new('base_url' => 'https://api.aspose.cloud/');
my $client = AsposeThreeDCloud::ApiClient->new( $config);
my $api = AsposeThreeDCloud::OAuthApi->new($client);
isa_ok($api, 'AsposeThreeDCloud::OAuthApi');

my $access_token;
#
# o_auth_post test
#
{
    my $grant_type = 'client_credentials'; # replace NULL with a proper value
    my $client_id = '*****your AppID****'; # replace NULL with a proper value
    my $client_secret =  '*****your AppKey****'; # replace NULL with a proper value
    my $result = $api->o_auth_post(grant_type => $grant_type, client_id => $client_id, client_secret => $client_secret);
    $access_token =  $result->access_token;
    printf $access_token;
}
printf "\n";

1;
