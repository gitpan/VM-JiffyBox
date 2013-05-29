package VM::JiffyBox;
{
  $VM::JiffyBox::VERSION = '0.002'; # TRIAL
}

# The line below is recognised by Dist::Zilla and taken for CPAN packaging
# ABSTRACT: OO-API for JiffyBox Virtual Machine

use Moo;

use VM::JiffyBox::Box;

has token => (is => 'ro', required => 1);
has version => (is => 'ro', default => 'v1.0');

sub get_id_from_name {
    my $self = shift;
}

sub get_vm {
    my $self = shift;
    my $box_id = shift;

    my $box = VM::JiffyBox::Box->new(id => $box_id);
    $box->hypervisor($self);

    return $box;
}

sub create_vm {
    my $self = shift;
}

1;

__END__

=pod

=head1 NAME

VM::JiffyBox - OO-API for JiffyBox Virtual Machine

=head1 VERSION

version 0.002

=head1 SYNOPSIS

 use VM::JiffyBox;

 my $jiffy = VM::JiffyBox->new($token);

 my $box_id = $jiffy->get_id_from_name($box_name);
 my $box    = $jiffy->get_vm($box_id);

 my $backup_id = $box->get_backup_id();
 my $new_box   = $jiffy->create_vm($backup_id);
 $new_box->start();

 my $new_box_details = $new_box->get_details();

 $new_box->stop();
 $new_box->delete();

 1;

=encoding utf8

=head1 PLEASE NOTE

This module ist still under heavy development and a B<TRIAL> version.
We do not recommend to use or even test it.

=head1 METHODS

=head2 get_id_from_name($box_name)

=head2 get_vm($box_id)

=head2 create_vm($backup_id)

=head1 SEE ALSO

=over

=item * L<https://github.com/tim-schwarz/VM-JiffyBox>

=back

=head1 AUTHOR

Tim Schwarz <todo@todo.de>, Boris Däppen <boris_daeppen@bluewin.ch>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2013 by Tim Schwarz, Boris Däppen, plusW.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
