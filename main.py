import sys, time
from sys import stdout

print(' VERSION DE PRUEBA        Que desea hacer        SOLO PARA ARCH LINUX ')
time.sleep(1)
print('\n\n 1 -> Iniciar con la instalacion.')
time.sleep(1)
print('\n\n 2 -> Salir.')
time.sleep(1)
a = int(input('\n\n Numero de la accion -> '))
time.sleep(1)
if a == 1:
    os.execute("sh ./autozsh.sh")

if a == 2:
    print('Ok, vuelve cuando quieras.')

time.sleep(1)
print('Operacion terminada.')
time.sleep(1)
