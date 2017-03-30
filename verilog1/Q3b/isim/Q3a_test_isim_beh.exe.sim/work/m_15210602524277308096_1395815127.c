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

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/deepak/6thSem/CS220A/Assignments/Q3b/Q3b_test.v";
static int ng1[] = {0, 0};
static int ng2[] = {1, 0};
static unsigned int ng3[] = {10U, 0U};
static unsigned int ng4[] = {11U, 0U};
static unsigned int ng5[] = {3U, 0U};
static unsigned int ng6[] = {5U, 0U};
static unsigned int ng7[] = {2U, 0U};



static void Initial_45_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;

LAB0:    t1 = (t0 + 2840U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(45, ng0);

LAB4:    xsi_set_current_line(47, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1448);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(48, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1608);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(49, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(50, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(53, ng0);
    t2 = (t0 + 2648);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    goto LAB1;

}

static void Always_58_1(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t14;

LAB0:    t1 = (t0 + 3088U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(58, ng0);

LAB4:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 2896);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(59, ng0);
    t4 = (t0 + 1928);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memset(t3, 0, 8);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB9;

LAB7:    if (*((unsigned int *)t7) == 0)
        goto LAB6;

LAB8:    t13 = (t3 + 4);
    *((unsigned int *)t3) = 1;
    *((unsigned int *)t13) = 1;

LAB9:    t14 = (t0 + 1928);
    xsi_vlogvar_assign_value(t14, t3, 0, 0, 1);
    xsi_set_current_line(60, ng0);
    t2 = ((char*)((ng2)));
    t4 = (t0 + 1608);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);
    xsi_set_current_line(61, ng0);
    t2 = ((char*)((ng1)));
    t4 = (t0 + 1768);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);
    xsi_set_current_line(62, ng0);
    t2 = ((char*)((ng3)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 4);
    xsi_set_current_line(63, ng0);
    t2 = (t0 + 2896);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB10;
    goto LAB1;

LAB6:    *((unsigned int *)t3) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(63, ng0);
    t4 = (t0 + 1928);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memset(t3, 0, 8);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB14;

LAB12:    if (*((unsigned int *)t7) == 0)
        goto LAB11;

LAB13:    t13 = (t3 + 4);
    *((unsigned int *)t3) = 1;
    *((unsigned int *)t13) = 1;

LAB14:    t14 = (t0 + 1928);
    xsi_vlogvar_assign_value(t14, t3, 0, 0, 1);
    xsi_set_current_line(64, ng0);
    t2 = ((char*)((ng2)));
    t4 = (t0 + 1768);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);
    xsi_set_current_line(65, ng0);
    t2 = ((char*)((ng1)));
    t4 = (t0 + 1608);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);
    xsi_set_current_line(66, ng0);
    t2 = ((char*)((ng3)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 4);
    xsi_set_current_line(68, ng0);
    t2 = (t0 + 2896);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB11:    *((unsigned int *)t3) = 1;
    goto LAB14;

LAB15:    xsi_set_current_line(68, ng0);
    t4 = (t0 + 1928);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memset(t3, 0, 8);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB19;

LAB17:    if (*((unsigned int *)t7) == 0)
        goto LAB16;

LAB18:    t13 = (t3 + 4);
    *((unsigned int *)t3) = 1;
    *((unsigned int *)t13) = 1;

LAB19:    t14 = (t0 + 1928);
    xsi_vlogvar_assign_value(t14, t3, 0, 0, 1);
    xsi_set_current_line(69, ng0);
    t2 = ((char*)((ng2)));
    t4 = (t0 + 1608);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);
    xsi_set_current_line(70, ng0);
    t2 = ((char*)((ng1)));
    t4 = (t0 + 1768);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);
    xsi_set_current_line(71, ng0);
    t2 = ((char*)((ng4)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 4);
    xsi_set_current_line(72, ng0);
    t2 = (t0 + 2896);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB20;
    goto LAB1;

LAB16:    *((unsigned int *)t3) = 1;
    goto LAB19;

LAB20:    xsi_set_current_line(72, ng0);
    t4 = (t0 + 1928);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memset(t3, 0, 8);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB24;

LAB22:    if (*((unsigned int *)t7) == 0)
        goto LAB21;

LAB23:    t13 = (t3 + 4);
    *((unsigned int *)t3) = 1;
    *((unsigned int *)t13) = 1;

LAB24:    t14 = (t0 + 1928);
    xsi_vlogvar_assign_value(t14, t3, 0, 0, 1);
    xsi_set_current_line(73, ng0);
    t2 = ((char*)((ng2)));
    t4 = (t0 + 1768);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);
    xsi_set_current_line(74, ng0);
    t2 = ((char*)((ng1)));
    t4 = (t0 + 1608);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);
    xsi_set_current_line(75, ng0);
    t2 = ((char*)((ng3)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 4);
    xsi_set_current_line(77, ng0);
    t2 = (t0 + 2896);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB25;
    goto LAB1;

LAB21:    *((unsigned int *)t3) = 1;
    goto LAB24;

LAB25:    xsi_set_current_line(77, ng0);
    t4 = (t0 + 1928);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memset(t3, 0, 8);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB29;

LAB27:    if (*((unsigned int *)t7) == 0)
        goto LAB26;

LAB28:    t13 = (t3 + 4);
    *((unsigned int *)t3) = 1;
    *((unsigned int *)t13) = 1;

LAB29:    t14 = (t0 + 1928);
    xsi_vlogvar_assign_value(t14, t3, 0, 0, 1);
    xsi_set_current_line(78, ng0);
    t2 = ((char*)((ng2)));
    t4 = (t0 + 1608);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);
    xsi_set_current_line(79, ng0);
    t2 = ((char*)((ng1)));
    t4 = (t0 + 1768);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);
    xsi_set_current_line(80, ng0);
    t2 = ((char*)((ng5)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 4);
    xsi_set_current_line(81, ng0);
    t2 = (t0 + 2896);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB30;
    goto LAB1;

LAB26:    *((unsigned int *)t3) = 1;
    goto LAB29;

LAB30:    xsi_set_current_line(81, ng0);
    t4 = (t0 + 1928);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memset(t3, 0, 8);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB34;

LAB32:    if (*((unsigned int *)t7) == 0)
        goto LAB31;

LAB33:    t13 = (t3 + 4);
    *((unsigned int *)t3) = 1;
    *((unsigned int *)t13) = 1;

LAB34:    t14 = (t0 + 1928);
    xsi_vlogvar_assign_value(t14, t3, 0, 0, 1);
    xsi_set_current_line(82, ng0);
    t2 = ((char*)((ng2)));
    t4 = (t0 + 1768);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);
    xsi_set_current_line(83, ng0);
    t2 = ((char*)((ng1)));
    t4 = (t0 + 1608);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);
    xsi_set_current_line(84, ng0);
    t2 = ((char*)((ng5)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 4);
    xsi_set_current_line(86, ng0);
    t2 = (t0 + 2896);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB35;
    goto LAB1;

LAB31:    *((unsigned int *)t3) = 1;
    goto LAB34;

LAB35:    xsi_set_current_line(86, ng0);
    t4 = (t0 + 1928);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memset(t3, 0, 8);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB39;

LAB37:    if (*((unsigned int *)t7) == 0)
        goto LAB36;

LAB38:    t13 = (t3 + 4);
    *((unsigned int *)t3) = 1;
    *((unsigned int *)t13) = 1;

LAB39:    t14 = (t0 + 1928);
    xsi_vlogvar_assign_value(t14, t3, 0, 0, 1);
    xsi_set_current_line(87, ng0);
    t2 = ((char*)((ng2)));
    t4 = (t0 + 1608);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);
    xsi_set_current_line(88, ng0);
    t2 = ((char*)((ng1)));
    t4 = (t0 + 1768);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);
    xsi_set_current_line(89, ng0);
    t2 = ((char*)((ng6)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 4);
    xsi_set_current_line(90, ng0);
    t2 = (t0 + 2896);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB40;
    goto LAB1;

LAB36:    *((unsigned int *)t3) = 1;
    goto LAB39;

LAB40:    xsi_set_current_line(90, ng0);
    t4 = (t0 + 1928);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memset(t3, 0, 8);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB44;

LAB42:    if (*((unsigned int *)t7) == 0)
        goto LAB41;

LAB43:    t13 = (t3 + 4);
    *((unsigned int *)t3) = 1;
    *((unsigned int *)t13) = 1;

LAB44:    t14 = (t0 + 1928);
    xsi_vlogvar_assign_value(t14, t3, 0, 0, 1);
    xsi_set_current_line(91, ng0);
    t2 = ((char*)((ng2)));
    t4 = (t0 + 1768);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);
    xsi_set_current_line(92, ng0);
    t2 = ((char*)((ng1)));
    t4 = (t0 + 1608);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);
    xsi_set_current_line(93, ng0);
    t2 = ((char*)((ng7)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 4);
    xsi_set_current_line(95, ng0);
    t2 = (t0 + 2896);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB45;
    goto LAB1;

LAB41:    *((unsigned int *)t3) = 1;
    goto LAB44;

LAB45:    xsi_set_current_line(95, ng0);
    t4 = (t0 + 1928);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memset(t3, 0, 8);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB49;

LAB47:    if (*((unsigned int *)t7) == 0)
        goto LAB46;

LAB48:    t13 = (t3 + 4);
    *((unsigned int *)t3) = 1;
    *((unsigned int *)t13) = 1;

LAB49:    t14 = (t0 + 1928);
    xsi_vlogvar_assign_value(t14, t3, 0, 0, 1);
    xsi_set_current_line(96, ng0);
    t2 = ((char*)((ng2)));
    t4 = (t0 + 1608);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);
    xsi_set_current_line(97, ng0);
    t2 = ((char*)((ng1)));
    t4 = (t0 + 1768);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);
    xsi_set_current_line(98, ng0);
    t2 = ((char*)((ng6)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 4);
    xsi_set_current_line(99, ng0);
    t2 = (t0 + 2896);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB50;
    goto LAB1;

LAB46:    *((unsigned int *)t3) = 1;
    goto LAB49;

LAB50:    xsi_set_current_line(99, ng0);
    t4 = (t0 + 1928);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memset(t3, 0, 8);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB54;

LAB52:    if (*((unsigned int *)t7) == 0)
        goto LAB51;

LAB53:    t13 = (t3 + 4);
    *((unsigned int *)t3) = 1;
    *((unsigned int *)t13) = 1;

LAB54:    t14 = (t0 + 1928);
    xsi_vlogvar_assign_value(t14, t3, 0, 0, 1);
    xsi_set_current_line(100, ng0);
    t2 = ((char*)((ng2)));
    t4 = (t0 + 1768);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);
    xsi_set_current_line(101, ng0);
    t2 = ((char*)((ng1)));
    t4 = (t0 + 1608);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);
    xsi_set_current_line(102, ng0);
    t2 = ((char*)((ng6)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 4);
    goto LAB2;

LAB51:    *((unsigned int *)t3) = 1;
    goto LAB54;

}


extern void work_m_15210602524277308096_1395815127_init()
{
	static char *pe[] = {(void *)Initial_45_0,(void *)Always_58_1};
	xsi_register_didat("work_m_15210602524277308096_1395815127", "isim/Q3a_test_isim_beh.exe.sim/work/m_15210602524277308096_1395815127.didat");
	xsi_register_executes(pe);
}