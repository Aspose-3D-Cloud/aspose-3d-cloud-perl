=begin comment

Aspose.ThreeD Cloud API Reference

No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 3.0

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end comment

=cut

#
# NOTE: This class is auto generated by the swagger code generator program. 
# Do not edit the class manually.
# Ref: https://github.com/swagger-api/swagger-codegen
#
package AsposeThreeDCloud::OAuthApi;

require 5.6.0;
use strict;
use warnings;
use utf8; 
use Exporter;
use Carp qw( croak );
use Log::Any qw($log);

use AsposeThreeDCloud::ApiClient;

use base "Class::Data::Inheritable";

__PACKAGE__->mk_classdata('method_documentation' => {});

sub new {
    my $class = shift;
    my $api_client;

    if ($_[0] && ref $_[0] && ref $_[0] eq 'AsposeThreeDCloud::ApiClient' ) {
        $api_client = $_[0];
    } else {
        $api_client = AsposeThreeDCloud::ApiClient->new(@_);
    }

    bless { api_client => $api_client }, $class;

}


#
# o_auth_post
#
# Get Access token
# 
# @param string $grant_type Grant Type (required)
# @param string $client_id App SID (required)
# @param string $client_secret App Key (required)
{
    my $params = {
    'grant_type' => {
        data_type => 'string',
        description => 'Grant Type',
        required => '1',
    },
    'client_id' => {
        data_type => 'string',
        description => 'App SID',
        required => '1',
    },
    'client_secret' => {
        data_type => 'string',
        description => 'App Key',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'o_auth_post' } = { 
    	summary => 'Get Access token',
        params => $params,
        returns => 'AccessTokenResponse',
        };
}
# @return AccessTokenResponse
#
sub o_auth_post {
    my ($self, %args) = @_;

    # verify the required parameter 'grant_type' is set
    unless (exists $args{'grant_type'}) {
      croak("Missing the required parameter 'grant_type' when calling o_auth_post");
    }

    # verify the required parameter 'client_id' is set
    unless (exists $args{'client_id'}) {
      croak("Missing the required parameter 'client_id' when calling o_auth_post");
    }

    # verify the required parameter 'client_secret' is set
    unless (exists $args{'client_secret'}) {
      croak("Missing the required parameter 'client_secret' when calling o_auth_post");
    }

    # parse inputs
    my $_resource_path = '/connect/token';

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/x-www-form-urlencoded');

    # form params
    if ( exists $args{'grant_type'} ) {
                $form_params->{'grant_type'} = $self->{api_client}->to_form_value($args{'grant_type'});
    }
    
    # form params
    if ( exists $args{'client_id'} ) {
                $form_params->{'client_id'} = $self->{api_client}->to_form_value($args{'client_id'});
    }
    
    # form params
    if ( exists $args{'client_secret'} ) {
                $form_params->{'client_secret'} = $self->{api_client}->to_form_value($args{'client_secret'});
    }
    
    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('AccessTokenResponse', $response);
    return $_response_object;
}

1;
