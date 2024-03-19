#!/usr/bin/perl


use strict;
use warnings;
use Email::Valid;



sub validar {
    my $email = shift;

    unless(Email::Valid->address($email)) {
        print "Parece que o email $email não é válido.\n";
    }
}



my $email_address = 'a.n.com';
my $second_email_address = 'ismael@example.com';



validar($email_address);
validar($second_email_address);