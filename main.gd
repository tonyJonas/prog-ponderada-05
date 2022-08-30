extends Node2D

#var teste = false   >variavel nao utilizada
#var valor = 0   >  variavel nao utilizada
#var número = 0   > varivavel não pode ter acento e não precisa colocar = 0
var numero
# lista = []   > é preciso declarar que é uma variável primeiro
var lista = []
var nome

func _on_Button_pressed():
	#Coletando dados inseridos pelo usuário
	#número = int(LineEdit.text)    > não pode ter acento na variavel e é preciso colocar '$' antes do Line, pois referencia a um objeto criado no Godot
	nome = $ColorRect2/LineEdit.text
	numero = int($ColorRect2/LineEdit2.text)
	# $LineEdit.text = nome   > é preciso ter a variavel nome declarada
	# $LineEdit.text = nome > não é preciso


func _on_Button2_pressed():
	#Incrementando o número inserido pelo usuário
	for i in range(10):
		#Numero+=i  > Numero na verdade está com letra minuscula
		#lista.append(Numero)  > Numero na verdade está com letra minuscula
		numero+=i
		lista.append(numero)
	$ColorRect3/ColorRectResult/Result.text = str(numero)


func _on_Button3_pressed():
	#Mudando o nome do usuário de acordo com os dados da lista
	#Se houver algum número ímpar o nome deve adicionar "baldo" ao final
	# while(len(lista)): > usar o for pra conseguir entrar em cada item da lista
	print(lista)
	for i in range(len(lista)):
		# cont=0 > precisa declarar a variavel primeiro (com 'var')    > não precisa declarar
		# i=0 > precisa declarar a variavel primeiro (com 'var')   > não precisa declarar
		if(lista[i]%2==1):
			nome = nome+" baldo"
			break
	$ColorRect4/ColorRect/Label.text = nome
	$ColorRect4/ColorRect2/Label2.text = str(lista)
