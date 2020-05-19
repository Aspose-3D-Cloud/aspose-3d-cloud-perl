=begin comment

Aspose.3D Cloud API Reference

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
package AsposeThreeDCloud::Object::FBXSaveOption;

require 5.6.0;
use strict;
use warnings;
use utf8;
use JSON qw(decode_json);
use Data::Dumper;
use Module::Runtime qw(use_module);
use Log::Any qw($log);
use Date::Parse;
use DateTime;

use AsposeThreeDCloud::Object::SaveFormat;
use AsposeThreeDCloud::Object::SaveOptions;

use base ("Class::Accessor", "Class::Data::Inheritable");


#
#
#
# NOTE: This class is auto generated by the swagger code generator program. Do not edit the class manually.
# REF: https://github.com/swagger-api/swagger-codegen
#

=begin comment

Aspose.3D Cloud API Reference

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
__PACKAGE__->mk_classdata('attribute_map' => {});
__PACKAGE__->mk_classdata('swagger_types' => {});
__PACKAGE__->mk_classdata('method_documentation' => {}); 
__PACKAGE__->mk_classdata('class_documentation' => {});

# new object
sub new { 
    my ($class, %args) = @_; 

	my $self = bless {}, $class;
	
	foreach my $attribute (keys %{$class->attribute_map}) {
		my $args_key = $class->attribute_map->{$attribute};
		$self->$attribute( $args{ $args_key } );
	}
	
	return $self;
}  

# return perl hash
sub to_hash {
    return decode_json(JSON->new->convert_blessed->encode( shift ));
}

# used by JSON for serialization
sub TO_JSON { 
    my $self = shift;
    my $_data = {};
    foreach my $_key (keys %{$self->attribute_map}) {
        if (defined $self->{$_key}) {
            $_data->{$self->attribute_map->{$_key}} = $self->{$_key};
        }
    }
    return $_data;
}

# from Perl hashref
sub from_hash {
    my ($self, $hash) = @_;

    # loop through attributes and use swagger_types to deserialize the data
    while ( my ($_key, $_type) = each %{$self->swagger_types} ) {
    	my $_json_attribute = $self->attribute_map->{$_key}; 
        if ($_type =~ /^array\[/i) { # array
            my $_subclass = substr($_type, 6, -1);
            my @_array = ();
            foreach my $_element (@{$hash->{$_json_attribute}}) {
                push @_array, $self->_deserialize($_subclass, $_element);
            }
            $self->{$_key} = \@_array;
        } elsif (exists $hash->{$_json_attribute}) { #hash(model), primitive, datetime
            $self->{$_key} = $self->_deserialize($_type, $hash->{$_json_attribute});
        } else {
        	$log->debugf("Warning: %s (%s) does not exist in input hash\n", $_key, $_json_attribute);
        }
    }
  
    return $self;
}

# deserialize non-array data
sub _deserialize {
    my ($self, $type, $data) = @_;
    $log->debugf("deserializing %s with %s",Dumper($data), $type);
        
    if ($type eq 'DateTime') {
        return DateTime->from_epoch(epoch => str2time($data));
    } elsif ( grep( /^$type$/, ('int', 'double', 'string', 'boolean'))) {
        return $data;
    } else { # hash(model)
        my $_instance = eval "AsposeThreeDCloud::Object::$type->new()";
        return $_instance->from_hash($data);
    }
}



__PACKAGE__->class_documentation({description => '',
                                  class => 'FBXSaveOption',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'save_format' => {
    	datatype => 'SaveFormat',
    	base_name => 'SaveFormat',
    	description => 'Gets or sets  of the SaveFormat.',
    	format => '',
    	read_only => '',
    		},
    'lookup_paths' => {
    	datatype => 'ARRAY[string]',
    	base_name => 'LookupPaths',
    	description => 'Some files like OBJ depends on external file, the lookup paths will allows Aspose.3D to look for external file to load',
    	format => '',
    	read_only => '',
    		},
    'file_name' => {
    	datatype => 'string',
    	base_name => 'FileName',
    	description => 'The file name of the exporting/importing scene. This is optional, but useful when serialize external assets like OBJ&#39;s material.',
    	format => '',
    	read_only => '',
    		},
    'file_format' => {
    	datatype => 'string',
    	base_name => 'FileFormat',
    	description => 'The file format like FBX,U3D,PDF ....',
    	format => '',
    	read_only => '',
    		},
    'enable_compression' => {
    	datatype => 'boolean',
    	base_name => 'EnableCompression',
    	description => ' Compression large binary data in the FBX file, default value is true',
    	format => '',
    	read_only => '',
    		},
    'fold_repeated_curve_data' => {
    	datatype => 'boolean',
    	base_name => 'FoldRepeatedCurveData',
    	description => 'Gets or sets whether reuse repeated curve data by increasing last data&#39;s ref count',
    	format => '',
    	read_only => '',
    		},
    'export_legacy_material_properties' => {
    	datatype => 'boolean',
    	base_name => 'ExportLegacyMaterialProperties',
    	description => 'Gets or sets whether export legacy material properties, used for back compatibility. This option is turned on by default',
    	format => '',
    	read_only => '',
    		},
    'video_for_texture' => {
    	datatype => 'boolean',
    	base_name => 'VideoForTexture',
    	description => 'Gets or sets whether generate a Video instance for Aspose.ThreeD.Shading.Texture when exporting as FBX.',
    	format => '',
    	read_only => '',
    		},
    'generate_vertex_element_material' => {
    	datatype => 'boolean',
    	base_name => 'GenerateVertexElementMaterial',
    	description => 'Gets or sets whether always generate a Aspose.ThreeD.Entities.VertexElementMaterial for geometries if the attached node contains materials. This is turned off by default.',
    	format => '',
    	read_only => '',
    		},
});

__PACKAGE__->swagger_types( {
    'save_format' => 'SaveFormat',
    'lookup_paths' => 'ARRAY[string]',
    'file_name' => 'string',
    'file_format' => 'string',
    'enable_compression' => 'boolean',
    'fold_repeated_curve_data' => 'boolean',
    'export_legacy_material_properties' => 'boolean',
    'video_for_texture' => 'boolean',
    'generate_vertex_element_material' => 'boolean'
} );

__PACKAGE__->attribute_map( {
    'save_format' => 'SaveFormat',
    'lookup_paths' => 'LookupPaths',
    'file_name' => 'FileName',
    'file_format' => 'FileFormat',
    'enable_compression' => 'EnableCompression',
    'fold_repeated_curve_data' => 'FoldRepeatedCurveData',
    'export_legacy_material_properties' => 'ExportLegacyMaterialProperties',
    'video_for_texture' => 'VideoForTexture',
    'generate_vertex_element_material' => 'GenerateVertexElementMaterial'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
