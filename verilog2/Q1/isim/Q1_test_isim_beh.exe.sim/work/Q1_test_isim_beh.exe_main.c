/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_04811978475435500023_0325700180_init();
    work_m_05384763917795563757_1661157083_init();
    work_m_09373395010086159653_0981665465_init();
    work_m_17811015499126946124_3225947821_init();
    work_m_15210602524277308096_3428577679_init();
    work_m_16541823861846354283_2073120511_init();


    xsi_register_tops("work_m_15210602524277308096_3428577679");
    xsi_register_tops("work_m_16541823861846354283_2073120511");


    return xsi_run_simulation(argc, argv);

}
