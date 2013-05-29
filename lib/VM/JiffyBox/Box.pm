package VM::JiffyBox::Box;
{
  $VM::JiffyBox::Box::VERSION = '0.002'; # TRIAL
}

# ABSTRACT: Representation of a Virtual Machine in JiffyBox

use Moo;

has id => (is => 'ro');
has hypervisor => (is => 'rw');

sub get_backup_id {
    my $self = shift;
}

sub get_details {
    my $self = shift;
}

sub start {
    my $self = shift;
}

sub stop {
    my $self = shift;
}

sub delete {
    my $self = shift;
}

1;

__END__

=pod

=head1 NAME

VM::JiffyBox::Box - Representation of a Virtual Machine in JiffyBox

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

=head2 get_backup_id()

=head2 get_details()

=head2 start()

=head2 stop()

=head2 delete()

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
