## Declarar o caminho para o binário do Perl
```perl
	#!/usr/bin/perl
```



## Declarar imports
```perl 
	use strict;
	use warnings;
	use Email::Valid;
```
- Strict -> Impõe que o programa tenha todas as variáveis declaradas antes de serem usadas, que todas as referências simbólicas (% $ @) sejam válidas e evita que sejam declaradas variáveis globais diretamente em funções a menos que seja extremamente necessário.
- Warnings -> Trata todas as exceções e erros mostrados durante a execução do código.
- Email::Valid -> É uma Classe para facilitar o tratamento de emails em Perl. Ela contém alguns tipos de verificação para saber se o introduzido email é válido ou não.



## Declarar variáveis
```perl
	my $email_address = 'a.n@example.com';
	my $second_email_address = 'ismael@example.com';
``` 
- $email_addresss && $second_email_address -> São variáveis que contém o endereço de email que queremos validar.



## Validar Email
```perl
	sub validar {
		my $email = shift;

		unless(Email::Valid->address($email)) {
			print "Parece que o email $email não é válido.\n";
		}
	}

	validar($email_address);
	validar($second_email_address);
```
- Sub validar -> Função usada para guardar o método de validação de email.
- $email -> Variável usada para guardar o email a ver validado:
	- Shif: É uma função nativa do Perl, neste caso usamos para retirar o primeiro parâmetro usado ao chamar a função para usar como variável. 
- Email::Valid->address($email):
	- Address:  é um método da classe Email::Valid responsável por validar endereços de email;
- validar($email_address) -> Chamamos a função validar e passamos como parâmetro o email a ser validado. 
