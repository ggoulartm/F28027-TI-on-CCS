#if 0
Titulo: MPPT P&O
Estudante 0: Caio Hudson
Estudante 1: Daniel Baron
Estudante 2: Gabriel Muller
Institui��o: UFSC
Data: 05/07/2022
#endif

#include "DSP28x_Project.h"


int main(void)
{
    InitSysCtrl(); //inicializando o sistema (PLL) e Desabilita Watchdog time
    InitGpio();  //Define os pinos GPIO -- Abrir arquivo F2802x_gpio.c -- Configurar os hexadecimais para habilitar em 1 o GPIO desejado
    InitPieCtrl(); //Inicializa��o (Zera tudo, flas pendentes) e Desativa INTx's no n�vel da CPU
    InitPieVectTable(); //Inicializa a tabela de interrup��o (posi��es da mem�ria)

    EALLOW; //Inicio da Diretiva para poder desbloquear o pino (registradores protegidos)
    GpioIntRegs.GPIOXINT1SEL.all = 19; //Configura pino 31 como provedor da INT1 (qualquer pino do PortA)
    EDIS; //Fim da Diretiva para desbloquear pino do registrador

    XIntruptRegs.XINT1CR.bit.POLARITY = 1; //Interrup��o por borda de subida, setando a polaridade
    XIntruptRegs.XINT1CR.bit.ENABLE = 1; //Habilita��o da INTx externa

    PieCtrlRegs.PIEIER1.bit.INTx4=1; //Habilita INT1
    IER |= 0x0001; //Habilita linha de INT1
    EINT;  //Habilita INTx globais

    while(1){
        //Vai direcionar para F2802x_DefaultIsr.c -- Linha 462 XINT1
    }
    return 0;
}
